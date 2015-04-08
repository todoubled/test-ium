{getBrowser} = require 'testium'
assert = require 'assert'

describe 'browse', ->
  before (done) ->
    options = {}
    getBrowser options, (err, @browser) =>
      done err

  before ->
    @browser.navigateTo '/'
    @browser.assert.httpStatus 200

  it 'can assert page content', ->
    @browser.assert.elementHasText 'h1', 'Hello World'
