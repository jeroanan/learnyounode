h = require 'http'

h.get process.argv[2], (r) ->
    r.setEncoding 'utf8'
    r.on "data", (d) ->
      console.log(d)