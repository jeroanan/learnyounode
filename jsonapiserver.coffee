http = require 'http'
u = require 'url'

port = process.argv[2]

parsetime = (timeParam) ->
  dt = new Date(timeParam)
  return JSON.stringify(
    {
    hour: dt.getHours()
    minute: dt.getMinutes()
    second: dt.getSeconds()
    })

get_unixtime = (timeParam) ->
  dt = new Date(timeParam).getTime()
  return JSON.stringify( { unixtime: dt })

writeHeader() ->
  res.writeHead(200, {'Content-Type': 'application/json'}

servercallback = (req, res) ->
  writeHeader()
  url = u.parse(req.url)
  if url.path is "/api/parsetime" then res.write(parsetime(url.query.iso))
  if url.path is "/api/unixtime" then res.write(get_unixtime(url.query.iso))

  req.on 'data', -> return
  req.on 'end', -> res.end("")

server = http.createServer (req, res) -> servercallback(req, res)
server.listen(port)
