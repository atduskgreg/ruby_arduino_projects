class Arkx < ArduinoSketch
  input_pin 1, :as => :knob
  serial_begin
  
  def loop
    if serial_available
      serial_println analogRead( knob )
      serial_read # flush the bit
    end
  end
end
