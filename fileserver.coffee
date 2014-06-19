fs = require 'fs'
n = require 'http'

servercallback = (req, res) ->
  fs.createReadStream(process.argv[3]).pipe(res)

server = n.createServer (req, res) -> servercallback(req, res)
server.listen(process.argv[2])
