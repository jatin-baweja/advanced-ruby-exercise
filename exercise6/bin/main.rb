#!/usr/bin/env ruby
require_relative "../lib/new_string"
require_relative "../lib/method_parameters"
include MethodParameters
puts "Enter new string : "
input_string = gets.chomp
new_string_object = NewString.new(input_string)
puts "Enter method name out of the following to execute (Also pass any arguments, if required):"
puts NewString.instance_methods(false)
method_to_execute = gets.chomp
parameter_hash = new_string_object.method(method_to_execute.to_sym).parameters.group_by { |arr| arr[0] }
params_count = parameter_count(parameter_hash)
if params_count[:max] > 0
  puts "Minimum number of arguments : " + params_count[:req].to_s
  puts "Optional number of arguments : " + params_count[:opt].to_s
  puts "Maximum number of arguments : " + params_count[:max].to_s
  puts "Enter the arguments(Enter blank line to stop)"
end
count = 0
arguments = []
blank_string = ""
loop do
  break if count >= params_count[:max]
  argument = gets.chomp
  if(argument == blank_string)
    break if count >= params_count[:req]
    puts "Please enter minimum number of arguments"
  elsif(count < params_count[:max])
    count += 1
    arguments.push(argument)
  end
end
puts instance_eval("new_string_object.#{ method_to_execute } #{ arguments.join(",") }")
