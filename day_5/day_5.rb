


require 'http'

# p "what area code would you like to search?"
# user_input = gets.chomp

response = HTTP.get("https://data.cityofchicago.org/resource/xzkq-xp2w.json")

employees = response.parse(:json)

#pp employees.length

i = 0
employees.each do |salary|
  pp employees[1]["salary_or_hourly"]
end

# pp employees[1]["salary_or_hourly"]