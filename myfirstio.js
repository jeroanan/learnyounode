// Generated by CoffeeScript 1.7.1
(function() {
  var data, fileName, fs;

  fs = require('fs');

  fileName = process.argv[2];

  data = fs.readFileSync(fileName);

  console.log(data.toString().split("\n").length);

}).call(this);

//# sourceMappingURL=myfirstio.map
