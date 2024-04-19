#!/usr/bin/python3

# This script requires root privilege to run
import fcntl
import os

KDSETLED = 0x4B32

console_fd = os.open('/dev/console', os.O_NOCTTY)

# Turn on caps lock
#fcntl.ioctl(console_fd, KDSETLED, 0x04)

# Turn off caps lock
fcntl.ioctl(console_fd, KDSETLED, 0)
