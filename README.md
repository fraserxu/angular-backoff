angular-backoff
===============

exponential backoff for angularjs

**Note:** This module was imported from [backo](https://github.com/segmentio/backo) by segmentio. I just build a wrapper for use in Angularjs.

#### Install:

* `bower install angular-backoff` Install with `bower`

#### Usage:

Include the `Backo` module into your app

```JavaScript
app.module('myApp', ['Backo'])
```

In your controller

```JavaScript
myApp.controller('myCtrl', function ($scope, Backoff) {
  var backoff = new Backoff({ min: 100, max: 20000 });

  setTimeout(function(){
    something.reconnect();
  }, backoff.duration());

  // later when something works
  backoff.reset()
})
```
#### Options

* min initial timeout in milliseconds [100]
* max max timeout [10000]
* jitter [0]
* factor [2]

#### Build:

* `npm install` Install coffeescript and uglify
* `make all` Build js file and compress

#### License

MIT