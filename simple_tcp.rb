require 'socket'

#IP address is 0.0.0.0 on port 8080:
server = TCPServer.new("0.0.0.0", 8080)
loop do
  connection = server.accept
  inputline = conneciton.gets

  connection.puts status
  connection.puts headers
  connection.puts body
  connection.close
end