define [
  'jquery'
  'underscore'
  'backbone'
  'jquery.mobile.router'
], ($, _, Backbone) ->
  config = {}

  routes = [
    # '#one':
      # handler: 'one'
      # event: 'bc'
  ]

  Controller =
    #one: ->
      # create new View object

  $.mobile.Router(routes, Controller, config)
