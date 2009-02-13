Kernel::require "serialport"
require 'templarx/templarx'

#params for serial port
port_str = "/dev/tty.usbserial-A3000WS0"  # may be different for you
baud_rate = 9600
data_bits = 8
stop_bits = 1
parity = SerialPort::NONE

sp = SerialPort.new(port_str, baud_rate, data_bits, stop_bits, parity)
t = Templarx.new :definition_path => "/Users/greg/code/archaeopteryx/db_drum_definition.rb"


sleep 10 # have to wait for arduino to wake up

while true do
 sleep 1
 sp.putc "y"
 val = (sp.readline.to_i - 925) / 98.0
 puts val
 t.default_probability = val
 t.rewrite_drum_definition
end

sp.close 
