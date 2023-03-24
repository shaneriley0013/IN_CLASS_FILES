


require 'http'


puts "Please enter a word:"
user_word = gets.chomp
puts


response = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=####USE THE KEY IN YOUR NOTES")

definition = response.parse(:json)
puts definition[0]["text"]

puts
puts "**************"
puts


response = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_word}/topExample?useCanonical=false&api_key=####USE THE KEY IN YOUR NOTES")

top_example = response.parse(:json)

puts top_example["text"]

puts
puts "**************"
puts


response = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_word}/pronunciations?useCanonical=false&limit=50&api_key=####USE THE KEY IN YOUR NOTES")

pronunciations = response.parse(:json)


puts pronunciations[0]["raw"]

puts
puts "**************"
puts
