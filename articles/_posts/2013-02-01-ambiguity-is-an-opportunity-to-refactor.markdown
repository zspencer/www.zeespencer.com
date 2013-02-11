---
layout: article
title: Ambiguity In Code Is an Opportunity to Refactor
togs: [code, ruby, tapas, design]
redirects:
  - /musings/ambiguity-is-an-opportunity-to-refactor/
---

There's a common design principle that states "Design the system to prevent
errors from occuring." Lean manufacturing calls this
*[Poka-yoke](http://en.wikipedia.org/wiki/Poka-yoke)*. Interaction design calls
these *[forcing
functions](http://www.interaction-design.org/encyclopedia/forcing_functions.html)*.

Since a much of the time building software is spent reading code, it's
important to decrease the amount of errors in understanding while we read.

One way to do this is to decrease ambiguity. Consider the `&` symbol in Ruby.
It's a method call on some ruby classes, [a unary
operator](/musings/the-ruby-&-symbol/) for converting objects to blocks, and a
binary operator for calling the `&` method without using a `.`.

In order to properly understand what the `&` is doing you have to figure out
which of it's three roles it's fulfilling. If it's a binary operator or a method
call you also must understand what that method is in the context of which object
it's using.

For example, `1 | 5` is a [bitwise
or](http://en.wikipedia.org/wiki/Bitwise_operation#OR) operation, while `[1,3,5]
| [3,5,7]` is a [set union](http://en.wikipedia.org/wiki/Union_(set_theory).

While we learn to infer this over time there is some cognitive overhead as we
read. To combat this, I propose we take a cue from the [zen of
python](http://www.python.org/dev/peps/pep-0020/), which states _explicit is
better than implicit_. In that spirit, python provides [two
ways](http://docs.python.org/2/library/stdtypes.html#set.intersection) to do set
intersections: the `&` operator, and the `intersection` function.

Since ruby does not always provide named variants for ambiguous symbols this
provides us with an opportunity to refactor. When we encounter ambiguity, maybe
it's time to extract a method to describes the operation more explicitely than
`|` or `&`.
