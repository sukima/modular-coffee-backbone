require.config
  paths:
    jquery:     'libs/jquery/jquery'
    jQM:        'lib/jquery-mobile/jquery.mobile'
    underscore: 'libs/underscore/underscore'
    backbone:   'libs/backbone/backbone'
    text:       'libs/require/text'
    json2:      'libs/json/json2'
    templates:   '../templates'
    'jquery.mobile.router': 'lib/jquery-mobile/jquery.mobile.router'

require ['app', 'json2'], (app) ->
  app.initialize()
