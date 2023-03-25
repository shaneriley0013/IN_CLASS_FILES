require 'ffaker'


puts 
puts 
puts




# p FFaker::Name.name       #=> "Christophe Bartell"
# p FFaker::Internet.email  #=> "kirsten.greenholt@corkeryfisher.info"





### JUST NAMES
# 3.times do
#   puts "#{FFaker::Name.first_name_female} #{FFaker::Name.last_name}" ### JUST NAMES
# end

#VEHICLE EXAMPLE
# 3.times do
#   puts "#{FFaker::Vehicle.make} #{FFaker::Vehicle.manufacturer_color}" 
#   puts
#   puts "======================"
#   puts
# end

# RANDOM NAMES AND A RANDOM SINGLE NUMBER USING FFAKER
# 3.times do
#   puts "#{FFaker::Name.first_name_female} #{FFaker::Name.last_name} #{FFaker::Number.number}"
#   puts
#   puts "======================"
#   puts
# end

# RANDOM LARGE NUMBER USING RUBY

# 3.times do
#   puts "#{FFaker::Name.first_name_female} #{FFaker::Name.last_name} #{rand(50_000..120_000)}"
#   puts
#   puts "======================"
#   puts
# end

employees = []
10.times do
  employees << {
    first_name: FFaker::Name.first_name, 
      last_name: FFaker::Name.last_name,
      salary: rand(50_000..120_000),
      status: [true, false].sample
  }
end
# pp employees
puts  employees[3][:first_name]

#employees.each { |employee| pp employees[0][:salary] } #don't really need the |employee| here
                                                        # for this one
#employees.each { p employees[0][:salary] }    #example without |employee| 



# class Employee
#   attr_reader :first_name, :last_name, :salary, :active
#   attr_writer ::first_name, :last_name, :salary, :active

#   def initialize(input_options)
#     @first_name = input_options[:first_name]
#     @last_name = input_options[:last_name]
#     @active = input_options[:active]
#     @salary = input_options[:salary]
#   end

#   def print_info
#     p "#{@first_name} #{@last_name} makes $#{@salary} per year."
#   end

#   def give_annual_raise
#     @salary *= 1.05
#   end
# end












puts
puts