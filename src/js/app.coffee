define [
  'jquery'
  'underscore'
  'backbone'
  'router'
  'jQM'
], ($,  _, Backbone, router, jqm) ->
  initialize: ->
    Backbone.history.start()
