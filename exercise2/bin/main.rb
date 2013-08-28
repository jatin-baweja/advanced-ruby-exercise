#!/usr/bin/env ruby
require_relative "../lib/code_execution"
include CodeExecution
statements = ""
puts "Enter a ruby program (Enter blank line to evaluate, enter 'q' to quit) :"
loop do
  input_statement = gets
  break if input_statement.chomp == ""
  exit if input_statement.chomp == /^q$/i
  statements = statements.concat(input_statement)
end
execute_program(statements)