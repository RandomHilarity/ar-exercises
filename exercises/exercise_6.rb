require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Bob", last_name: "Dole", hourly_rate: 200)
@store1.employees.create(first_name: "Frank", last_name: "Grimes", hourly_rate: 40)

@store2.employees.create(first_name: "Wei", last_name: "Tulow", hourly_rate: 40)
@store2.employees.create(first_name: "Sum Ting", last_name: "Wong", hourly_rate: 90)
@store2.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 70)