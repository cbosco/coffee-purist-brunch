Spine = require 'spine'

class App extends Spine.Controller
  constructor: ->
    super
    @log "Well, hello there."

module.exports = App
