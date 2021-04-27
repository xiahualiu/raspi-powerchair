#!/usr/bin/env python3

import rospy
import spidev

# Marcros
MCP_RESET =	0b11000000
MCP_READ =	0b00000011
MCP_WRITE =	0b00000010

MCP_READ_STATUS =  0b1010000
MCP_RX_STATUS =		 0b1011000

MCP_LOAD_TX_BUFFER_0 = 0b01000001
MCP_LOAD_TX_BUFFER_1 = 0b01000011
MCP_LOAD_TX_BUFFER_2 = 0b01000101

MCP_RTS_0=    0b10000001
MCP_RTS_1=    0b10000010
MCP_RTS_2=    0b10000100

C610_CAN_ID=  0x200

# Return a handle for SPI device
## Default SPI channel = 0 
## Default SPI Baud = 1Mbps
## Default SPI Mode = 0
## Return >=0 if success

def spi_init(spi_handle, baud=1000000, mode=0b00):
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


# Initiate a Data Frame (8 bytes) transmission on CAN bus
# Poll the available slots before writing to a TX buffer

def can_send_data(spi_handle, data):
	
	# Poll available TX slots


	# Write TXBnSIDH: TRANSMIT BUFFER n STANDARD IDENTIFIER REGISTER HIGH
	device_handle.spi_write(spi_handle, [MCP_WRITE, tx_slot+1, tx_canid>>3 & 0xff])

	# Write TXBnSIDL: TRANSMIT BUFFER n STANDARD IDENTIFIER REGISTER LOW
	top3=tx_canid & 0b111 
	device_handle.spi_write(spi_handle, [MCP_WRITE, tx_slot+2, top3 << 5])

	# Write TXBnDLC: TRANSMIT BUFFER n DATA LENGTH CODE REGISTER
	device_handle.spi_write(spi_handle, [MCP_WRITE, tx_slot+5, 0b00001000])
	
	device_handle.spi_write(spi_handle, )


if __name__=="__main__":
	# Open SPI device 0
	spi=spidev.SpiDev()
	spi.open=(0,0)
	spi_init(spi,1000000, 0b00)
	mcp_init(spi,)
