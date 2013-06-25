_ = require 'underscore'

exports.find = (days) ->
  console.log 'Array'
  console.log days
  if !days || !days.length
    return null

  spreads = _.map days, (day) ->
    day.spread()
  min = _.min spreads
  days[spreads.indexOf(min)]
