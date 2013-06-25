class Day
  constructor: (@num, @min, @max) ->

  getMin: ->
    parseInt @min, 10
  getMax: ->
    parseInt @max, 10

isDayLine = (line) ->
  line.trim().match /^\d+/

createDay = (line) ->
  parts = line.split /\s+/
  new Day parts[0], parts[2], parts[1]

exports.parse = (lines) ->
  days = []
  for line in lines
    if isDayLine line
      days.push createDay line

  days