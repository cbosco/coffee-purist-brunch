# Write your [mocha](http://visionmedia.github.com/mocha/) specs here.
chai = require 'chai'
chai.should()
expect = chai.expect	# for use with undefined

describe 'An empty array', ->
	a = []
	it 'should have length of 0', ->
		expect(a.length).to.eql 0
