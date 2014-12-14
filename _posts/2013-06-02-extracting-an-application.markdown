---
title: Splitting codebases
layout: article
tags: [software, design]
---

As programmers, we split our code along what job those bits of code do for us.
We pontificate about whether MVVM or MVC or another pattern is the appropriate
way to build an app for the given language, environment, or problem domain.

This is valuable! Adaptable code knows little about other parts of the system,
and good application design patterns guide us to writing adaptable code with
little effort.

I am curious: how does slicing code along the job code does for users impact how
we build software?

Consider the following:

An application that has two user archetypes: a visitor and a regular
user. Regular users wind up using the messaging and content creation features
quite regularly, while visitors mostly visit pages which display content.

If we care about separating concerns based upon what the code did for the
coders, we would build the content display feature and the content creation
features into the same application.

If we care about separating code based upon what the code does for a person, we
could build the content display feature and the content creation features into
two different applications and route users to the appropriate application.

Splitting these features into independent applications provides two advantages:

1. It allows for experimentation. If I can route users based upon type to a separate app
   seamlessly, the jump to routing users based upon cohort becomes much simpler.
2. It allows for optimization. If we split our application, we could provide the
   visitor application with caching without burdening the registered user
   application.

This isn't free, however, it requires answering some hard questions:

1. How do we extract components to share between applications?
3. How do we manage changes to shared components?
2. How does this impact the complexity of our network layer?
4. What is the appropriate timing to extract an application?
5. What skills would I need to do so effectively?


Answering these questions will be most beneficial to those of us who are
designing our applications for experimentation and/or working on systems with
large differences in the resource demands between user types.

From these groups, I expect to see the next generation of application patterns.
Patterns which make splitting codebases by what it does for a user as
commonplace as frameworks designed to make splitting codebases by what it does
for us programmers.
