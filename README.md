<!-- Please do not change this logo with link -->
[![MCHP](images/microchip.png)](https://www.microchip.com)

# Provisioning firmware for PIC-IoT
This firmware is used as part of the provisioning process of PIC-IoT kits for use with various cloud providers.  The firmware communicates over a UART interface and provides commands for accessing the WINC module and the ECC device on the board.  This functionality is used by the iotprovision script running on the host side.  For more info see https://www.microchip.com/design-centers/internet-of-things/iot-dev-kits/iot-provision-tool and https://pypi.org/project/iotprovision/.

## Related Documentation
https://www.pic-iot.com/

## Software Used
- MPLAB® X IDE 5.40 or newer [(microchip.com/mplab/mplab-x-ide)](http://www.microchip.com/mplab/mplab-x-ide)
- MPLAB® XC16 1.40 or a newer compiler [(microchip.com/mplab/compilers)](http://www.microchip.com/mplab/compilers)
- MPLAB® Code Configurator (MCC) 4.0.2 or newer [(microchip.com/mplab/mplab-code-configurator)](https://www.microchip.com/mplab/mplab-code-configurator)
- MPLAB® Code Configurator (MCC) Device Libraries PIC24 / dSPIC33 / PIC32MM MCUs 1.155.0 or newer [(microchip.com/mplab/mplab-code-configurator)](https://www.microchip.com/mplab/mplab-code-configurator)
- MPLAB® Code Configurator (MCC) CryptoAuthLib 1.0.0 or newer [(microchip.com/mplab/mplab-code-configurator)](https://www.microchip.com/mplab/mplab-code-configurator)
- MPLAB® Code Configurator (MCC) WINC Library 1.0.0 or newer [(microchip.com/mplab/mplab-code-configurator)](https://www.microchip.com/mplab/mplab-code-configurator)
- PIC24F-GA-GB-DFP Device Support (1.3.109) or newer [(packs.download.microchip.com/)](https://packs.download.microchip.com/)

## Hardware Used
Either
- PIC-IoT WA Development Board (https://www.microchip.com/developmenttools/ProductDetails/EV54Y39A)
or
- PIC-IoT WG Development Board (https://www.microchip.com/developmenttools/ProductDetails/AC164164)
