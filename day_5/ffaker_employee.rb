require 'ffaker'

FFaker::Name.name       #=> "Christophe Bartell"
FFaker::Internet.email  #=> "kirsten.greenholt@corkeryfisher.info"


# class Employee
#   attr_reader :first_name, :salary, :active, :last_name
#   attr_writer :first_name

#   def initialize(input_options)
#     @first_name = input_options[:first_name]
#     @last_name = input_options[:last_name]
#     @active = input_options[:active]
#     @salary = input_options[:salary]
#   end

#   def print_info
#     p "#{first_name} #{@last_name} makes $#{@salary} per year."
#   end

#   def give_annual_raise
#     @salary *= 1.05
#   end
# end

