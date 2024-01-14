#!/bin/bash

top -b -n 5 -d 1 | cat > CPUinfo.txt

uuencode CPUinfo.txt CPUinfo.txt | mail -s "CPU Information" -r savaliyamaulik786@gmail.com maulik2695@gmail.com
