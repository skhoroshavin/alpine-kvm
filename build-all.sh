#!/bin/sh
packer build alpine-usb.json
packer build kvm-host.json
packer build kvm-guest.json
