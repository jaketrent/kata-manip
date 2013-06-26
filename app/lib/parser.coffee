Day = require './day'

isDayLine = (line) ->
  line.match /^\s*\d+/

createDay = (line) ->
  parts = line.trim().split /\s+/
  new Day parts[0], parts[2], parts[1]

exports.parse = (lines) ->
  days = []
  for line in lines
    if isDayLine line
      days.push createDay line

  days