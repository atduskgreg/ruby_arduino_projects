class GitBell < ArduinoSketch
  output_pin 6, :as => :motor
  
    def loop
      if serial_available
        digitalWrite motor, ON
        delay 1000
        digitalWrite motor, OFF
        delay 1000 # if multiple events are stacked, seperate them by 1s
        serial_read # flush the bit
      end
    end
end
