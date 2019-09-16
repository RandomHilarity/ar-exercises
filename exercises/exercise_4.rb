require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create do |s|
  s.name = "Surrey"
  s.annual_revenue = 224000
  s.womens_apparel = true
end

Store.create do |s|
  s.name = "Whistler"
  s.annual_revenue = 1900000
  s.mens_apparel = true
end

Store.create do |s|
  s.name = "Yaletown"
  s.annual_revenue = 430000
  s.mens_apparel = true
  s.womens_apparel = true
end

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each do |loc|
    puts "#{loc.name}, #{loc.annual_revenue}"
end

@womens_stores_less_1M = Store.where(womens_apparel: true).where("annual_revenue < 1000000")
@womens_stores_less_1M.each do |loc|
    puts "#{loc.name}, #{loc.annual_revenue}"
end
