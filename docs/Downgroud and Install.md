# Downgroud DLink firmware v1.1+

First of all you should check if you are above v1.1+ as this guide should be mandatory.

DLink and other manufacturers have included a signature system in their routers to be tamper-free, the Dir-819 fits among them. That's why we have to downgroud.


## Requirements and Files

- DLink Firmware [v1.0](files/DIR-819_A1_V1.0_Encrypt.bin) and [v1.02](files/DIR-819_A1_V1.02_Unencrypt.bin)

- OpenWRT flash file (Factory file)

### Steps

1. go to the router's web interface (usually http://192.168.0.1) and authenticate with the password (Default password: `admin`).

2. Go to update firmware or firmware.

3. Select the v1.0 file to downgroud.

4. Wait to restart the router and repeat the previous step for firmware v1.02.

5. Now go to the firmware tab again, and select the OpenWRT firmware. And wait to reboot.

Be happy and welcome to OpenWRT.

## Problems and Solutions

1. If the router restarts and the CPU starts to warm up, turn it off immediately as you've just created a recoverable brick.
    - You will need to have a burner to burn (literally) the OpenWRT firmware directly into NOR memory.
    - You are literally alone to make the recovery.

2. The CPU is at normal temperature but does not start OpenWRT.
    - Check if you can connect to the router [serial](serial.md).
        - If you are able to [connect to serial](serial.md) you can download the image via tftp and write the image with dd command or use the sysupgrade command.
