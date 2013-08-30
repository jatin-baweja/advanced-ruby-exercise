#!/usr/bin/env ruby
string1 = "Sample String"
string2 = "Another Sample String"
def string1.inspect_value
  inspect
end
class << string1
  def uppercase
    upcase
  end
end
puts string1.inspect_value
puts string1.uppercase
puts string2.uppercase