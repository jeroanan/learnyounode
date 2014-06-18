fs = require 'fs'
dir = process.argv[2]
ext = process.argv[3]

fs.readdir dir, (err, files) -> \
  console.log file for file in files.filter (x) -> x.match '\.' + ext + '$'