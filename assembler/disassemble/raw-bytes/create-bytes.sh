#!/bin/sh
printf "\xb8\x01\x00\x00\x00"  > assembly.bin
printf "\xbb\x02\x00\x00\x00" >> assembly.bin
printf "\xcd\x80"             >> assembly.bin
