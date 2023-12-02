# Clock DIY


## 1. Main goal
Learning to build and program electronic systems based on the bare AtMega 8A microprocessor.

## 2. Project description
"Clock" is a device whose heart is the ATMega 8A. It communicates with the DS1307 RTC module via the I2C interface, obtaining the current time and date. 
The accepted data is displayed on a segment display using the TM1637 controller. The whole thing is powered by a power supply that converts 230V AC from the socket into 5V DC.
The system has been programmed so that in the evening - 9 p.m. and in the morning - 9 a.m. - the displayed hours have lower brightness so as not to disturb sleeping people, while during the day the brightness increases so that it is clearly visible even in full sunlight.

## 3. Tools
- VS Code + PlatformIO
- ATmega system programmer - USBasp

## 4. Hardware
- ATMega 8A microprocessor
- DS1307 RTC module
- segment display with TM1637 controller
- basic electronic components such as wires, resistors, capacitors, etc.


Project by Michał BŁotniak
