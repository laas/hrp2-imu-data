#!/usr/bin/gnuplot

set terminal png size 1920, 768
set output "attitude.png"

imuFile="./imu.dat"

plot \
imuFile u ($2+$3*1e-9):8 w l title 'roll', \
imuFile u ($2+$3*1e-9):9 w l title 'pitch', \
imuFile u ($2+$3*1e-9):10 w l title 'yaw'
