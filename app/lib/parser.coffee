Day = require './day'

isDayLine = (line) ->
  line.trim().match /^\d+/

createDay = (line) ->
  parts = line.split /\s+/
  new Day parts[1], parts[3], parts[2]

exports.parse = (lines) ->
  days = []
  for line in lines
    if isDayLine line
      days.push createDay line

  days