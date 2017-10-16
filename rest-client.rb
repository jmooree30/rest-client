require 'rest-client'

puts "What would you like to search?"
query = gets.chomp

result = RestClient.get('https://www.bing.com/search/search?q=' + query)
file = 'index.html'
File.open(file, "w") do |file|
    file.write(result)
end 

puts "Your search result were saved in the index.html file."
puts "Cookies:"
puts result.cookies 
puts "Response code:"
puts result.code
