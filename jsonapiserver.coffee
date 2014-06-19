http = require 'http'

port = process.argv[2]

parsetime = (url) ->
  qs = url.split('=')[1]
  console.log(qs)

unixtime = (url) -> console.log("unixtime")

servercallback = (req, res) ->
  if req.url.indexOf("/api/unixtime" ) is 0 then unixtime(req.url)
  else if req.url.indexOf("/api/parsetime") is 0 then parsetime(req.url)
  req.on 'end', -> res.end("")

server = http.createServer (req, res) -> servercallback(req, res)
server.listen(port)