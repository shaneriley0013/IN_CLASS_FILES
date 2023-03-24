
require 'http'

response = HTTP.get("https://api.wordnik.com/v4/word.json/apple/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=####USE THE KEY IN YOUR NOTES")

word = response.parse(:json)

pp word[0]