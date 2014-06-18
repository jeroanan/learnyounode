h = require 'http'

url = process.argv[2]
a = ""

h.get url, (r) ->
  r.setEncoding("utf8")
  r.on "data", (d) -> a += d
  r.on "end", ->
    console.log a.length
    console.log a