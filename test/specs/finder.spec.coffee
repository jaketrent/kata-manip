chai = require 'chai'
finder = require '../../app/lib/finder'
Day = require '../../app/lib/Day'

assert = chai.assert
expect = chai.expect
should = chai.should()

describe 'Finder', ->

  it 'has a find function', ->
    finder.find.should.be.defined

  it 'takes an array of days', ->
    finder.find.length.should.eql 1

  it 'returns null if null is passed in', ->
    # finder.find(null).should.eql null
    expect(finder.find(null)).to.eql null

  it 'returns null if empty array is passed in', ->
    expect(finder.find([])).to.eql null

  it 'returns the single day if day of one array is given', ->
    day = new Day 1, 50, 99
    finder.find([day]).should.eql day

  it 'returns the day with the minimal temp spread', ->
    day = new Day 1, 50, 99
    day2 = new Day 2, 40, 99
    finder.find([day, day2]).should.eql day

  it 'returns the day with the minimal temp spread', ->
    day = new Day 1, 30, 99
    day2 = new Day 2, 40, 99
    finder.find([day, day2]).should.eql day2
