Kernel::require "serialport"

#params for serial port
port_str = "/dev/tty.usbserial-A3000WS0"  # may be different for you
baud_rate = 9600
data_bits = 8
stop_bits = 1
parity = SerialPort::NONE

sp = SerialPort.new(port_str, baud_rate, data_bits, stop_bits, parity)

sleep 10 # have to wait for arduino to wake up

while true do
 sp.putc "y"
end

sp.close 
