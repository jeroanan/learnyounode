filtered_ls = (dir, ext, callback) ->
  fs = require 'fs'

  fs.readdir dir, (err, files) ->
    if err then return callback err, null
    else callback null, files.filter (x) -> x.match '\.' + ext + '$'

module.exports = filtered_ls