#!/usr/bin/env ruby
require_relative "../lib/new_string"
puts "Enter new string : "
input_string = gets.chomp
new_string_object = NewString.new(input_string)
puts "Enter method name out of the following to execute (Also pass any arguments, if required):"
puts NewString.instance_methods(false)
method_to_execute = gets.chomp
puts instance_eval("new_string_object.#{ method_to_execute }")