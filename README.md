Modular Backbone Project Template
=================================

Project's goal is to provide a minimalistic structure of the Backbone application using RequireJS and CoffeeScript.

This project is based on dzejkej's [modular-backbone](https://github.com/dzejkej/modular-backbone/) and the work of Thomas Davis and his
[Organizing your application using Modules (require.js)](http://backbonetutorials.com/organizing-backbone-using-modules/) tutorial.

###Included Libraries

* [RequireJS 1.0.8](http://requirejs.org/) with [text plugin](http://requirejs.org/docs/download.html#text) for templates
* [jQuery 1.7.2](http://jquery.com/)
* [Underscore 1.3.3](http://documentcloud.github.com/underscore/) in the form of [amdjs branch](https://github.com/amdjs/underscore)
* [Backbone 0.9.2](http://documentcloud.github.com/backbone/) in the form of [amdjs branch](https://github.com/amdjs/backbone)
* [json2.js](https://github.com/douglascrockford/JSON-js)

###Using Cake

A `Cakefile` for CoffeScript will build all .coffee files and uses [RequireJS Optimizer](http://requirejs.org/docs/optimization.html)
to place the finished product into the `build` directory. Configuration is at the top of the `Cakefile`.
All configuration options are available [here](https://github.com/jrburke/r.js/blob/master/build/example.build.js).

---

For everyone that cannot live without LICENSE - [here it is](http://sam.zoy.org/wtfpl/COPYING) ☺.
