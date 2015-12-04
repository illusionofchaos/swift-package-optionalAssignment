# Optional Assignment

Adds two new operators: `?=` and `??=`.

**?=** operator (`a ?= b`) updates the value of *a* with the value of *b* if *b* is not *nil* and has the same type as *a*.

**??=** operator (`a ??= (b, c)`) updates the value of *a* with the value of *b* if *b* is not *nil* and has the same type as *a*, otherwise the value of *c* is used. 

# Example Usage
```
var a = 0
let b:Any? = nil
let c = 1
let d = "text"
let e = 2

a ?= b          //0
a ?= c          //1
a ?= d          //1
a ??= (d, e)    //2
```

