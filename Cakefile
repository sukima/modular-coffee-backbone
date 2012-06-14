config =
  appDir: 'src'
  baseUrl: 'js'
  dir: 'build'
  fileExclusionRegExp: /^\.|\.coffee$/
  logLevel: 1
  paths:
    jquery:         'libs/jquery/jquery'
    underscore:     'libs/underscore/underscore'
    backbone:       'libs/backbone/backbone'
    text:           'libs/require/text'
    json2:          'libs/json/json2'
    templates:      '../templates'
  optimize: 'uglify'
  modules: [
    name: 'main'
    exclude: ['jquery', 'underscore', 'backbone', 'text', 'json2']
  ]

fs = require 'fs'
rjs = require 'requirejs'

{print} = require 'util'
{spawn} = require 'child_process'

coffeeBuild = (callback) ->
  coffee = spawn 'coffee', ['-c', config.appDir]
  coffee.stderr.on 'data', (data) ->
    process.stderr.write data.toString()
  coffee.stdout.on 'data', (data) ->
    print data.toString()
  coffee.on 'exit', (code) ->
    callback?() if code is 0

task "generate", "Generate .js from .coffee files", (opts) ->
  console.log "Building CoffeeScript files."
  coffeeBuild()

task "build", "Optimize code and place in build dir", (opts) ->
  invoke 'generate'
  console.log "Optimizing to build directory."
  rjs.optimize config

task "watch", "Watch the src for changes and rebuild", (opts) ->
  invoke 'generate'
  console.log "Watching files for changes."
  coffee = spawn 'coffee', ['-w', '-c', config.appDir]
  coffee.stderr.on 'data', (data) ->
    process.stderr.write data.toString()
  coffee.stdout.on 'data', (data) ->
    print data.toString()
