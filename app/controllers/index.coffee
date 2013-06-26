reader = require '../lib/reader'
parser = require '../lib/parser'
finder = require '../lib/finder'

exports.home = (req, res) ->
  reader.read "#{__dirname}/../weather.dat", (lines) ->
    days = parser.parse lines
    day = finder.find days
    res.render 'home',
      weather: lines.join('\n')
      day: day