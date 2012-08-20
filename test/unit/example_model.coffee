Spine = require 'spine'
chai = require 'chai'
chai.should()
expect = chai.expect	# for use with undefined
{ ExampleModel } = require '../../app/models/example_model'

describe 'An empty array', ->
	m = new ExampleModel {
			testProperty: true
		}
	it 'should have a testProperty set to true', ->
		expect(m.testProperty).to.eql true
