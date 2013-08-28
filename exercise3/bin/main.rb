#!/usr/bin/env ruby
require_relative "../lib/code"
include Code
puts "Enter a method name :"
method_name = gets
puts "Enter a line of code to execute in the method :"
method_line = gets
create_method("def " + method_name + method_line + "end")
execute_method(method_name)