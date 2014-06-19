http = require 'http'

servercallback = (req, res) ->
  req.setEncoding('utf8')
  req.on 'data', (chunk) -> res.write(chunk.toUpperCase())
  req.on 'end', -> res.end("")

server = http.createServer (req, res) -> servercallback(req, res)
server.listen(process.argv[2])