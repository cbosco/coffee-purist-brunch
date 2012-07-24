# Coffee purist brunch

This is a simple CoffeeScript-driven skeleton for [Brunch](http://brunch.io/) based largely on [@damiencaselli]()'s [spine-on-brunch](https://github.com/damiencaselli/spine-on-brunch).

Main languages are [CoffeeScript](http://coffeescript.org/),
[LESS](http://lesscss.org/) and
[eco templates](https://github.com/sstephenson/eco/). Backbone.js, the most common Brunch framework, is replaced with the simplified-for-CoffeeScript **[spine](http://spinejs.com/)** framework. (Underscore is also dropped).

## Getting started

Clone the repo and run `npm install` & `brunch build`.
See more info on the [official site](http://brunch.io)

## Overview

    config.coffee
    README.md
    /app/
      /assets/
        index.html
        images/
      /lib/
      models/
      styles/
      views/
      application.coffee
    /test/
      functional/
      unit/
    /vendor/
      scripts/
        common/
          jquery.js
          console-helper.js  
        spine/
          spine.js
          lib/ajax.js
          lib/local.js
          lib/manager.js
          lib/route.js
          lib/tmpl.js
      styles/
        normalize.css
        helpers.css

* `config.coffee` contains configuration of your app. You can set plugins /
languages that would be used here.
* `app/assets` contains images / static files. Contents of the directory would
be copied to `build/` without change.
Other `app/` directories could contain files that would be compiled. Languages,
that compile to JS (coffeescript, roy etc.) or js files and located in app are
automatically wrapped in module closure so they can be loaded by
`require('module/location')`.
* `app/models` & `app/views` contain base classes your app should inherit from.
* `test/` contains feature & unit tests.
* `vendor/` contains all third-party code. The code wouldn’t be wrapped in
modules, it would be loaded instantly instead.

This all will generate `public/` (by default) directory when `brunch build` or `brunch watch` is executed.

## Tests

This skeleton runs its tests headlessly with node and coffeescript directly, unlike other skeletons, which follow the Brunch convention which relies on output JavaScript to run its tests (`public` directory). Testing is relatively new to Brunch.

With this skeleton, run **`npm test`** instead of `brunch test` or **`npm start`** in addition to `brunch watch` in order to automatically run tests. This runs the tests directly on the coffeescript files in `test/` and utilizes NPM-installed test libraries instead of static ones from `test/vendor/` as other skeletons do.

## Other
Versions of software the skeleton uses:

* jQuery 1.7.2
* Spine 1.0.6
* HTML5Boilerplate 3.0.3

The license is [public domain](http://creativecommons.org/publicdomain/zero/1.0/).
Use it however you want.
