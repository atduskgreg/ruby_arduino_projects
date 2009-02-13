  class FastBlink < ArduinoSketch
    output_pin 13, :as => :led
    # looking for hints?  check out the examples directory
    # example sketches can be uploaded to your arduino with
    # rake make:upload sketch=examples/hello_world
    # just replace hello_world with other examples
    
      def loop
       # your code here
       blink led, 200
      end
      
  end
