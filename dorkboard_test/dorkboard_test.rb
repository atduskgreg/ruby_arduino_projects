class DorkboardTest < ArduinoSketch
  output_pin 12, :as => :led
  serial_begin
  
  def loop
    digitalWrite led, OFF
    if serial_available
      digitalWrite led, ON
      delay 1000
      digitalWrite led, OFF
      delay 1000 # if multiple events are stacked, seperate them by 1s
      serial_read # flush the bit
    end
  end  
end
