class Foo {
    var x = 0
}

struct Bar {
    var x = 0
}

var foo1 = Foo()
var foo2 = foo1
foo1.x
foo2.x
foo1.x = 10
foo1.x
foo2.x

var bar1 = Bar()
var bar2 = bar1
bar1.x
bar2.x
bar1.x = 10
bar1.x
bar2.x
