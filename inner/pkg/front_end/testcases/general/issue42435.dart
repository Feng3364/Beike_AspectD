// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class A<X extends A<X>> {}

typedef F = Function<Y extends A>();

class B {
  B(Function<Z extends A>() a);
  factory B.foo(Function<Z extends A>() a) => new B(a);
  foo2(Function<Z extends A>() a) {}
  Function<Z extends A>() foo3() => throw 42;
  Function<Z extends A>() get foo4 => throw 42;
  void set foo5(Function<Z extends A>() a) {}
  Function<Z extends A>() foo6 = (() => throw 42)();
}

bar2(Function<Z extends A>() a) {}
Function<Z extends A>() bar3() => throw 42;
Function<Z extends A>() get bar4 => throw 42;
void set bar5(Function<Z extends A>() a) {}
Function<Z extends A>() bar6 = (() => throw 42)();

extension E on int {
  baz2(Function<Z extends A>() a) {}
  Function<Z extends A>() baz3() => throw 42;
  Function<Z extends A>() get baz4 => throw 42;
  void set baz5(Function<Z extends A>() a) {}
}

main() {}
