#!/usr/bin/env ruby
require_relative "../lib/class_creation"
include ClassCreation
puts "Enter csv file to open (persons.csv/places.csv) : "
csv_filename = gets.chomp
object_array, property_names = create_class_and_instances_from_csv(csv_filename)
puts "Enter property values to display #{ property_names } : "
property_to_display = gets.chomp
object_array.display(property_to_display)