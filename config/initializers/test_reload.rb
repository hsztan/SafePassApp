# Test initializer to check if it reloads
puts "🔥 INITIALIZER LOADED: #{Time.current}"

# Set a global variable to test reloading
$test_initializer_loaded_at = Time.current

# Add a method to a class to test reloading
class String
  def test_method_v1
    "Version 1 - loaded at #{$test_initializer_loaded_at}"
  end
end
