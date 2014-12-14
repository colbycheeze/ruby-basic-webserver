require 'socket'               # Get sockets from stdlib

puts "Initializing..."
server = TCPServer.open(2000)  # Socket to listen on port 2000


loop {
  Thread.start(server.accept) do |client|
    client.puts(Time.now.ctime)
    client.puts("Closing the connection. Bye!")
    client.close
  end
}
