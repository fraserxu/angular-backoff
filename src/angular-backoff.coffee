###*
 * Ported from https://github.com/segmentio/backo
###

Backoff = ->
    class Backoff
        constructor: (opts = {}) ->
            @ms = opts.min or 100
            @max = opts.max or 10000
            @factor = opts.factor or 2
            @jitter = opts.jitter or 0
            @attempts = 0

        duration: ->
            ms = @ms * Math.pow(@factor, @attempts++)
            ms += Math.random() * this.jitter if @jitter
            Math.min(ms, @max) | 0

        reset: ->
            @attemps = 0

Backoff.$inject = []

angular.module('Backo', [
])
.factory('Backoff', Backoff)
