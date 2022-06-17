% CAN Bus Applications 

# Introduction

## History
* Before CAN point to point wiring
* 1986: Bosch developed the CAN protocol
* 1991: Published CAN 2.0 (CAN 2.0: 11 bit, 2.0B: 29 bit)
* 1993: CAN adapoted as ISO 11898 standard
* 2003: ISO 11989 becomes standard series
* 2012: CAN FD 1.0 (flexible data rate upto 5 mbps) released
* 2015: CAN FD is standardized (ISO 11898-1)

# Why CAN bus ?

## Simple and low cost
ECU (Electronics control units) communicate with each other using simple digital signal
via 2 wire bus system. Reducing weight, cost, maintaince.

## Centralized
Provides only one point of entry (2 wire bus) for all ECU to communicate with each other.
For data, diagnostic, configuration and updates.

## Robust
* Immune to electrical and electromagnetic interference
* Digital signal levels 
* Inbuilt error detection and retry mechanism 
* Inbuild error handling
* Ideal for safety critical applications

## Efficient
CAN messages are priority base and provide fix or measureable latencies.


# ISO Standard
## ISO 11898 Standard
The CAN communication protocol, ISO-11898: 2003, describes how information is passed between
devices on network and conforms to the Open System Interconnect (OSI) model.

ISO 11898 defines data link and physical layer only.

## Application Layer
* CANOpen by CAN in Automation (CiA)
* KVASER CAN Kingdom by Kvaser
* DeviceNet by Rockwell automation

# CAN frames
## Standard CAN frame
![Standard CAN frame](./img/stdcan.png)

## Standard CAN frame

## CAN Waveforms
![CAN waveform](./img/can_scope.png)

## Extended CAN frame
![Extended](./img/extcan.png)

## Need for Application layer standards
As the CAN standard only provide basis for communication only but do not specify things
like 
- How to decode payload 
- How to trasport data more than 64 bytes

# SAE J1939

## SAE J1939
Is standard used in heavy-duty vehicles like 
- Mining vehicles
- Military vehicles
- Agriculture

## Features
- Support 29 bit extended ID
- 250K baud rate
- Parameter Group Numbers (PGN) (standard and use specific)
- Suspect Parameter Number (SPN)
- Dynamic 8 bit address assignment to nodes.
- Data conversion is possilbe across multiple manufacturers

## Parameter Group Number (PGN)
It is 18 bit subset of 29 bit-extended CAN ID.

# OBD2

## OBD2
On board diagnostics is a self-diagnostic and reporting. It provide diagnostic trouble codes
(DTCs) and real time vehicle parameters data using standard ports.

# UDS 
## UDS 
Unified Diagnostic Service (UDS) is a communication protocol used to diagnost, firmware update
and routine testing.

The UDS protocol (ISO 14229) is standardizedc across manufacturers. It is a client server 
protocol with test tool being client and ECU being server.

## UDS Services
![](./img/uds_services.png)

Use cases
- Read diagnostic codes
- Read vehicle parameters
- Diagnostic
- Update firmware and settings
- Secure access

# CAN ISO-TP
## CAN ISO-TP
Classiscal and extended CAN support maximum 8 and 64 bytes in one communication frame.
Diagnostic and firmware upgrade require larger payload. ISO-TP provide facility to extend CAN payload
upto 4095 bytes using segmentation, flow control and reassembly.

# CAN Open
## CAN Open
Is mostly used in industrial automation.


# DBC Files
## DBC Files
CAN DBC CAN database is a text file decribing how to decode raw CAN but data to physical values.


# LIN 
## LIN 
- Low cost alternative to CAN bus
- Mostly used for window, wiper, air condition low time constrained actuators
- Master slave configuration
- Single wirr with 1-20 Kbit/s 
- Time triggered scheduling with guaranteed latency time
- Variable data length (2,4,8)
- Error detection
- Configuration
- 12 Voltage operating mode
- Sleep and wake support for power saving
   
