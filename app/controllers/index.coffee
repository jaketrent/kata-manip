reader = require '../lib/reader'
parser = require '../lib/parser'
finder = require '../lib/finder'

exports.home = (req, res) ->
  reader.read "#{__dirname}/../weather.dat", (lines) ->
    days = parser.parse lines
    day = finder.find days
    console.log 'day:'
    console.log day
    res.render 'home', { day: day }