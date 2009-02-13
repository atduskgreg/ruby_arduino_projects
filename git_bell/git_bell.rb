  class GitBell < ArduinoSketch
    output_pin 6, :as => :motor
    # looking for hints?  check out the examples directory
    # example sketches can be uploaded to your arduino with
    # rake make:upload sketch=examples/hello_world
    # just replace hello_world with other examples
    
      def loop
        digitalWrite motor, ON
      end
      
  end
