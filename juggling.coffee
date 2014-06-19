h = require 'http'

url1 = process.argv[2]
url2 = process.argv[3]
url3 = process.argv[4]

stream1 = ""
stream2 = ""
stream3 = ""

stream1ended = false
stream2ended = false
stream3ended = false

printstreams = ->
    if stream1ended is true and stream2ended is true and stream3ended is true then doprint()

doprint = ->
  console.log(stream1)
  console.log(stream2)
  console.log(stream3)

h.get url1, (r) ->
    r.setEncoding('utf8')
    r.on "data", (d) -> stream1 +=d
    r.on "end", ->
      stream1ended = true
      printstreams()

h.get url2, (r) ->
    r.setEncoding('utf8')
    r.on "data", (d) -> stream2 += d
    r.on "end", ->
      stream2ended = true
      printstreams()

h.get url3, (r) ->
    r.setEncoding('utf8')
    r.on "data", (d) -> stream3 += d
    r.on "end", ->
      stream3ended = true
      printstreams()
