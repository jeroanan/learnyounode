h = require 'http'

urls = []
streams = ["", "", ""]
results = 0

populateurl = (num) -> urls[num] = process.argv[num+2]

doprint = -> console.log stream for stream in streams

printstreams = -> if results is 3 then doprint()

streamfinished = ->
  results++
  printstreams()

geturl = (num) ->
  h.get urls[num], (r) ->
    r.setEncoding('utf8')
    r.on "data", (d) -> streams[num] += d
    r.on "end", -> streamfinished()

for num in [0..2] by 1
  populateurl(num)
  geturl(num)

