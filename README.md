## mkuzip for Linux

This is FreeBSD's [`mkuzip`](https://www.freebsd.org/cgi/man.cgi?query=mkuzip&manpath=FreeBSD+13.1-RELEASE+and+Ports) utility for Linux. 

Why? I was working on some FreeBSD boot stuff for a RISC-V board, and my daily driver is Linux, and Virtualbox is lousy at passing through a USB storage device, so generating a new boot image and getting it onto the SD card was a pain. Simple solution: port the only tool I needed to Linux, move on.

Last update: 13.1-RELEASE

### Building

```
$ sudo apt install libbsd-dev zlib1g-dev liblzma-dev libzstd-dev
$ make
```
