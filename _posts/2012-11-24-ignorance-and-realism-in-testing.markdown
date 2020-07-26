---
title: Ignorance and Realism in Testing
layout: article
tags: [programming]
---

I was talking through some of my thoughts on applying visual and interaction
design critique principles to code with [Enrique Comba](http://www.ecomba.org/).
At the time, I was in the middle of analyzing the differences between [directly
calling the method](https://gist.github.com/4141476#file_normal_spec.rb) under
test, [nested describes and
lets](https://gist.github.com/4141476#file_let_spec.rb), and using a [custom
assertion](https://gist.github.com/4141476#file_custom_assertion_spec.rb).

<!--more-->

I was pointing out how moving the method call out to a custom assert hid a
breadcrumb developers would use when understanding the system under test, while
leaving it in a let would at least keep it in the same test file. Enrique
responded with an interesting perspective:

**"That's the point of BDD. Your tests shouldn't care about your implementation
at all."**

I was a little taken aback. One of my favorite parts about clearly written specs
is how they give the programmer direction in the use of the code being tested.
If the test code is completely ignorant of the implementation, how can it
provide those insights?!

After an hour or so, I started thinking about [Justin
Searls](http://about.me/searls) recent presentation on [realism in
tests](http://oredev.org/2012/sessions/budgeting-reality-a-new-approach-to-mock-objects).
This got me thinking: **What if the level of realism and the level of ignorance
of a test are two related variables?** A test which provides a high level of
realism of the system under test may not mock out external services the system
uses because it does not know about them. Conversely, tests which provides a low
level of realism often very clearly point out how its collaborators must be
formed, as well as the usage of the code under test.

Hopefully these complementary insights will provide me with more purposeful,
better organized test suites in the future.
