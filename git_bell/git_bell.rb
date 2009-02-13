class GitBell < ArduinoSketch
  output_pin 12, :as => :motor
  serial_begin
  
    def loop
      digitalWrite motor, OFF
      digitalWrite 13, LOW # dorkboard built-in LED on.
      if serial_available
        digitalWrite motor, ON
        delay 1000
        digitalWrite motor, OFF
        delay 1000 # if multiple events are stacked, seperate them by 1s
        serial_read # flush the bit
      end
    end
end
