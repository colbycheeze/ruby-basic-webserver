require 'net/http'                  # The library we need
host = 'www.google.com'     # The web server
path = '/index.html'                 # The file we want

puts "Initializing..."
http = Net::HTTP.new(host)          # Create a connection
headers, body = http.get(path)      # Request the file

if headers.code == "200"            # Check the status code
  puts "body:"
  print body
else
  puts "didn't go so well!"
  puts "#{headers.code} #{headers.message}"
end