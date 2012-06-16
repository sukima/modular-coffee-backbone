define [
  'jquery'
  'underscore'
  'backbone'
  'router'
], ($, _, Backbone, router) ->
  initialize: ->
    Backbone.history.start()
