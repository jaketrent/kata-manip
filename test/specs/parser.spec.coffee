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

  it 'returns a multiple days for multiple lines', ->
    days = parser.parse(['1    99  50', '2    101 30'])
    days.length.should.eql 2
    days[1].getMin().should.eql 30
    days[1].getMax().should.eql 101

  it 'handles real data', ->
    line1 = '  14  61    59    60       5  55.9       0.00 RF      060  6.7 080   9 10.0  93 87 1008.6'
    line2 = '  15  64    55    60       5  54.9       0.00 F       040  4.3 200   7  9.6  96 70 1006.1'
    days = parser.parse [line1, line2]
    days[0].getNum().should.eql 14
    days[0].getMin().should.eql 59
    days[0].getMax().should.eql 61
