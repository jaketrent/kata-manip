chai = require 'chai'
parser = require '../../app/lib/parser'

assert = chai.assert
expect = chai.expect
should = chai.should()

describe 'Parser', ->

  it 'should have a parse function', ->
    parser.parse.should.be.defined

