class Day
  constructor: (@num, @min, @max) ->

  getMin: ->
    parseInt @min, 10
  getMax: ->
    parseInt @max, 10
  spread: ->
    @getMax() - @getMin()

module.exports = Day