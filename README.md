# PlusMinus.jl

![Lifecycle](https://img.shields.io/badge/lifecycle-experimental-orange.svg)<!--
![Lifecycle](https://img.shields.io/badge/lifecycle-maturing-blue.svg)
![Lifecycle](https://img.shields.io/badge/lifecycle-stable-green.svg)
![Lifecycle](https://img.shields.io/badge/lifecycle-retired-orange.svg)
![Lifecycle](https://img.shields.io/badge/lifecycle-archived-red.svg)
![Lifecycle](https://img.shields.io/badge/lifecycle-dormant-blue.svg) -->
[![Build Status](https://travis-ci.com/tbeason/PlusMinus.jl.svg?branch=master)](https://travis-ci.com/tbeason/PlusMinus.jl)
[![codecov.io](http://codecov.io/github/tbeason/PlusMinus.jl/coverage.svg?branch=master)](http://codecov.io/github/tbeason/PlusMinus.jl?branch=master)
<!--
[![Documentation](https://img.shields.io/badge/docs-stable-blue.svg)](https://tbeason.github.io/PlusMinus.jl/stable)
[![Documentation](https://img.shields.io/badge/docs-master-blue.svg)](https://tbeason.github.io/PlusMinus.jl/dev)
-->



Julia core maintainers suggested in this [2015 original issue](https://github.com/JuliaLang/julia/issues/14498) that a plusminus function was not worthy of inclusion in Base Julia, much to the disappointment of statisticians everywhere.

Fear not!

This package implements the [plus-minus](https://en.wiktionary.org/wiki/plus-minus_sign) function (and that's it!).

```julia
const ± = plusminus     # thats \pm followed by TAB

plusminus(x::Number,y::Number) = (x-y,x+y)

2 ± 1       # returns (1,3)
```

The convention I use here is for the `x-y` to return first and `x+y` second. Because the output is a tuple, you can apply `reverse` to it to get the items in the other order. Alternatively, use direct assignment: `minusitem,plusitem = 2 ± 1`.

Broadcasting is automatic because Julia rocks.

```
(±).(collect(1:3),1) == [(i-1,i+1) for i in 1:3]
```