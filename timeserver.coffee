n = require 'net'

port = process.argv[2]

pad = (number) ->
  number = "0" + number if number < 10
  return number

servercallback = (sck) ->
  dt = new Date()
  year = dt.getFullYear()
  month = pad(dt.getMonth()+1)
  day = pad(dt.getDate())
  hours = pad(dt.getHours())
  minutes = pad(dt.getMinutes())

  sck.end("#{year}-#{month}-#{day} #{hours}:#{minutes}\n")

server = n.createServer (sck) -> servercallback(sck)

server.listen(port)