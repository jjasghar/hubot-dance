chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'DANCE', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()

    require('../src/DANCE')(@robot)

  it 'registers a hear listener', ->
    expect(@robot.hear).to.have.been.calledWith(/DANCE/)

