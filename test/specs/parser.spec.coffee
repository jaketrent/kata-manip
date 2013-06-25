chai = require 'chai'
parser = require '../../app/lib/parser'

assert = chai.assert
expect = chai.expect
should = chai.should()

describe 'Parser', ->

  it 'has a parse function', ->
    parser.parse.should.be.defined

  it 'takes a string array', ->
    parser.parse.length.should.eql 1

  it 'returns an empty array for no lines', ->
    parser.parse([]).should.eql []

  it 'returns no days for lines that dont start with numbers', ->
    parser.parse(['asdf']).should.eql []

  it 'returns a single day for a single line with a number', ->
    days = parser.parse(['1 99 50'])
    days.length.should.eql 1
    days[0].getMin().should.eql 50
    days[0].getMax().should.eql 99
