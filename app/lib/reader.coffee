fs = require 'fs'

exports.read = (path, done) ->
  if path?.length > 0
    fs.readFile path, 'utf8', (err, data) ->
      throw err if err
      done data.split '\n'
  else
    done []