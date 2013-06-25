chai = require 'chai'
reader = require '../../app/lib/reader'

assert = chai.assert
expect = chai.expect
should = chai.should()

noop = ->

describe 'Reader', ->

  it 'should have a read function', ->
    reader.read.should.be.defined

  it 'should accept a file path and callback', ->
    reader.read.length.should.eql 2

  it 'returns an empty array for an empty path', (done) ->
    reader.read '', (contents) ->
      contents.length.should.be.defined
      done()

  it 'returns a string for the first line of a file', (done) ->
    reader.read "#{__dirname}/../fixtures/singleline.txt", (contents) ->
      contents.length.should.eql 1
      (typeof contents[0]).should.eql 'string'
      contents[0].should.eql "0"
      done()

  it 'returns two strings for two lines in file', (done) ->
    reader.read "#{__dirname}/../fixtures/twolines.txt", (contents) ->
      contents.length.should.eql 2
      contents[i].should.eql("#{i}") for i, val in contents
      done()
