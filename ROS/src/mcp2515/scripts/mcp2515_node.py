#!/usr/bin/env python3

import rospy
import spidev

# Marcros
MCP_RESET =	0b11000000
MCP_READ =	0b00000011
MCP_WRITE =	0b00000010

MCP_READ_STATUS =  0b1010000
MCP_RX_STATUS =		 0b1011000

# Read from RXB0SIDH
MCP_READ_RX0_BUFFER = 0b10010000
MCP_READ_RX1_BUFFER = 0b10010100

MCP_LOAD_TX_BUFFER_0 = 0b01000001
MCP_LOAD_TX_BUFFER_1 = 0b01000011
MCP_LOAD_TX_BUFFER_2 = 0b01000101

MCP_RTS_0=    0b10000001
MCP_RTS_1=    0b10000010
MCP_RTS_2=    0b10000100

C610_CAN_ID=  0x200

# Initialize the handle for SPI device
## Default SPI Baud = 10Mbps
## Default SPI Mode = 0

def spi_init(spi_handle, baud=10000000, mode=0b00):
	spi_handle.max_speed_hz=baud
	spi_handle.mode=mode

# MCP2515 CAN Interface Initialization, MUST run before read/write to the CAN bus
# CAN TX ID is set once forever here, so we do not need to send CAN ID every time

def mcp_init(spi_handle):
	
	# Send software RESET message to MCP2515
	spi_handle.writebytes([MCP_RESET])

	# Write TXBnCTRL: TRANSMIT BUFFER n CONTROL REGISTERs for all three
	spi_handle.writebytes([MCP_WRITE, 0x30, 0b00000000])
	spi_handle.writebytes([MCP_WRITE, 0x40, 0b00000000])
	spi_handle.writebytes([MCP_WRITE, 0x50, 0b00000000])

	# Write TXRTSCTRL: PIN CONTROL and STATUS REGISTER
	spi_handle.writebytes([MCP_WRITE, 0x0d, 0b00000000])

	# Write TXBnSIDH: TRANSMIT BUFFER n STANDARD IDENTIFIER REGISTER HIGH
	spi_handle.writebytes([MCP_WRITE, 0x31, C610_CAN_ID>>3 & 0xff])
	spi_handle.writebytes([MCP_WRITE, 0x41, C610_CAN_ID>>3 & 0xff])
	spi_handle.writebytes([MCP_WRITE, 0x51, C610_CAN_ID>>3 & 0xff])

	# Write TXBnSIDL: TRANSMIT BUFFER n STANDARD IDENTIFIER REGISTER LOW
	top3=C610_CAN_ID & 0b111 
	spi_handle.writebytes([MCP_WRITE, 0x32, top3 << 5])
	spi_handle.writebytes([MCP_WRITE, 0x42, top3 << 5])
	spi_handle.writebytes([MCP_WRITE, 0x52, top3 << 5])

	# Write TXBnDLC: TRANSMIT BUFFER n DATA LENGTH CODE REGISTER - Set to 8 (0b1000)
	spi_handle.writebytes([MCP_WRITE, 0x35, 0b00001000])
	spi_handle.writebytes([MCP_WRITE, 0x45, 0b00001000])
	spi_handle.writebytes([MCP_WRITE, 0x55, 0b00001000])

	# Write RXB0CTRL: RECEIVE BUFFER 0 CONTROL REGISTER
	# Enable Rollover
	# Disable CAN ID filter - because there are too many monitered CAN IDs on bus
	spi_handle.writebytes([MCP_WRITE, 0x60, 0b01100100])


# Initiate a Data Frame (8 bytes) transmission on CAN bus
# Poll the available slots before writing to a TX buffer
# If all TX buffers on MCP2515 are full, print an warning and discard the data

def can_send_data(spi_handle, data):
	
	# Poll available TX slots
	status_values=spi_handle.xfer2([MCP_READ_STATUS,0xff,0xff])
  
	# Debug
	rospy.loginfo("The status value is: {}, {}".format(status_values[1], status_values[2]))

	if status_values[1] != status_values[2]:
		rospy.logfatal("Error! Found bit discrepancy in the TX_STATUS verification")
		return -1

	TXB0REQ=status_values[1] >> 2 & 1
	TXB1REQ=status_values[1] >> 4 & 1
	TXB2REQ=status_values[1] >> 6 & 1

	# REQ bits will be cleared after the transmission
	if TXB0REQ==0:
		# Load TX Buffer 0 And Send RTS signal
		rospy.loginfo("Send Data on TX Buffer 0.")
		spi_handle.writebytes([MCP_LOAD_TX_BUFFER_0]+data)
		spi_handle.writebytes([MCP_RTS_0])
	elif TXB1REQ==0:
		# Load TX Buffer 1 And Send RTS signal
		rospy.loginfo("Send Data on TX Buffer 1.")
		spi_handle.writebytes([MCP_LOAD_TX_BUFFER_1]+data)
		spi_handle.writebytes([MCP_RTS_1])
	elif TXB2REQ==0:
		# Load TX Buffer 2 And Send RTS signal
		rospy.loginfo("Send Data on TX Buffer 2.")
		spi_handle.writebytes([MCP_LOAD_TX_BUFFER_2]+data)
		spi_handle.writebytes([MCP_RTS_2])
	else:
		rospy.loginfo("MCP2515 CAN TX BUFFER is full, new data cannot be sent")
		return -2
	
	return 0

# Read RX buffer 0 or 0 and 1, Clear RX flags
# Poll the status of RX buffer before retrieving any data
# Return data format:
# [CAN_ID0, DLC0, BYTE0_0, BYTE1_0,..., BYTE7_0, (CAN_ID1, DLC1, BYTE0_1, BYTE1_1,...,BYTE7_1)]

def can_read_data(spi_handle)
	
	# Poll RX status
	rx_status=spi_handle.xfer2([MCP_RX_STATUS, 0xff, 0xff])

	# Check discrepancy
	if rx_status[1] != rx_status[2]:
		rospy.logfatal("Error! Found bit discrepancy in the RX_STATUS verification")
		return -1

	# Check if message is in buffer
	RXnIF=rx_status[1]>>5 & 0b11
	if RXnIF == 0:
		rospy.loginfo("RX buffer is empty.")
		return -2


	return_data=[]
	return_data_tmp=[0]*10
	
	# Something in RX0 buffer
	if RXnIF & 1:
		rx0=spi_handle.xfer2([MCP_READ_RX0_BUFFER]+[0xff]*13)

		# Write CAN_ID0
		return_data_tmp[0]=rx0[1]<<3+rx0[2]>>5

		if rx0[2]>>3 & 1:
			rospy.logerror("Error, RX0 message has extended identifier.")

		# Write DLC0
		return_data_tmp[1]=rx0[5] & 0b1111

		if rx0[5] >> 6 & 1:
			rospy.logerror("Error, RX0 message is a remote frame.")

		# Copy all 8 bytes no matter DLC
		return_data_tmp[2:10]=rx0[6:14]

		# Push to return list
		return_data=return_data+return_data_tmp.copy()

	# Something in RX1 buffer
	if RXnIF >> 1:
		rx1=spi_handle.xfer2([MCP_READ_RX1_BUFFER]+[0xff]*13)

		# Write CAN_ID1
		return_data_tmp[0]=rx1[1]<<3+rx1[2]>>5

		if rx1[2]>>3 & 1:
			rospy.logerror("Error, RX1 message has extended identifier.")

		# Write DLC0
		return_data_tmp[1]=rx0[5] & 0b1111

		if rx1[5] >> 6 & 1:
			rospy.logerror("Error, RX1 message is a remote frame.")

		# Copy all 8 bytes no matter DLC
		return_data_tmp[2:10]=rx1[6:14]

		# Push to return list
		return_data=return_data+return_data_tmp.copy()

	return return_data

if __name__=="__main__":

	# ROS init
	rospy.init_node('mcp2515')
	rospy.loginfo("ROS node: /mcp2515 was created.")

	# Open SPI device 0
	spi=spidev.SpiDev()
	spi.open(0,0)
	rospy.loginfo("SPI device 0 at bus 0 was connected.")

	# Initialize SPI device
	spi_init(spi,10000000, 0b00)
	mcp_init(spi)
	rospy.loginfo("SPI device was intialized.")

	# Send dummy data
	can_send_data(spi,[0xfa]*8)
	
	buffer_values=spi.xfer2([MCP_READ,0x36,0xff])
	rospy.loginfo("Read TX1 buffer: {}".format(buffer_values[2]))

