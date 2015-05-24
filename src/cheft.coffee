C = Cheft = version: '1.0.0'

idCounter = 0
toString = Object.prototype.toString
types = [
    'Function', 'Object', 'String', 'Array', 'Number'
    'Boolean', 'Date', 'RegExp', 'Undefined', 'Null'
]

for item in types
    do (item) -> C["is#{item}"] = (obj) -> toString.call(obj) is "[object #{item}]"

C.extend = (target, mixins...) ->
    return target unless target
    target[key] = value for key, value of mixin for mixin in mixins
    target

C.uniqueId = (prefix) -> (if prefix then prefix else '') + ++idCounter

C.mixin = (tag, obj) ->
    tag.mixin obj.actions if obj.actions
    return unless obj.events
    for item of obj.events
        do (item) -> tag.on item, obj.events[item]

# @include core/application.coffee
# @include core/router.coffee
# @include core/storage.coffee

window.C = C
