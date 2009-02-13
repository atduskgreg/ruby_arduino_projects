class GitBell < ArduinoSketch
  output_pin 12, :as => :motor
  
    def loop
      digitalWrite motor, OFF
      if serial_available
        digitalWrite motor, ON
        delay 1000
        digitalWrite motor, OFF
        delay 1000 # if multiple events are stacked, seperate them by 1s
        serial_read # flush the bit
      end
    end
end
