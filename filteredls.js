// Generated by CoffeeScript 1.7.1
(function() {
  var dir, ext, fs;

  fs = require('fs');

  dir = process.argv[2];

  ext = process.argv[3];

  fs.readdir(dir, function(err, files) {
    var file, _i, _len, _ref, _results;
    _ref = files.filter(function(x) {
      return x.match('\.' + ext + '$');
    });
    _results = [];
    for (_i = 0, _len = _ref.length; _i < _len; _i++) {
      file = _ref[_i];
      _results.push(console.log(file));
    }
    return _results;
  });

}).call(this);

//# sourceMappingURL=filteredls.map