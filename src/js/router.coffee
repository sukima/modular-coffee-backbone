define [
  'jquery'
  'underscore'
  'backbone'
], ($, _, Backbone) ->
  class Router extends Backbone.Router
    routes:
      '': ''

  new Router()
