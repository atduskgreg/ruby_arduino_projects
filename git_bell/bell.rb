Kernel::require "serialport"

module Bell
  extend self

  def ring
    #params for serial port
    port_str = "/dev/tty.usbmodem1d11"  # may be different for you
    baud_rate = 9600
    data_bits = 8
    stop_bits = 1
    parity = SerialPort::NONE

    sp = SerialPort.new(port_str, baud_rate, data_bits, stop_bits, parity)
    
    sleep 5
    
    sp.putc 10
    sp.close 
  end
end