---
layout: default
tags: [article, draft]
title: "Gravity and Code Cleanliness"
description: "Clean Code is often confused with personal preference.
              This article examines the math behind clean code."
---

Do you remember Sir Isaac Newton? If your education was typical,
You heard about him in middle school as that guy who got hit in
the head with an apple and invented graviy.

That representation is not 100% accurate.

Sir Isaac Newton\'s main triumph was not so much his formulation of
gravitational attraction. It was his discovering of a tool that
increased our capability to understand a complex universe!

Let us approach gravity as if the law of gravitation had not yet been
formalized mathmatically.

We observe several different bodies in our solar system: Sol, Luna,
Mercury, Venus, Mars, Earth, Jupiter, Saturn, Uranus, and Neptune.
We know each of these bodies move in relation to each other.

If we were to attempt to track the distance between all of these objects
at once, we would wind up 3,628,800 different distances to track at any
point in time.

This is a rather difficult problem to solve, given there are no computers!

Newtons brilliance was not in the fact that he could handle all of those
calculations, but in that he simplified the problem so that quantity of
calculations no longer needed to be done. How? By making a few assumptions:

  * Instead of measuring force between all objects at once, measure only two
    objects at a time.
  * Adding the total attractions between each individual body is accurate enough
    to predict the movement of all of the bodies.

This means that instead of calculating 10*9*8*7*6*5*4*3*2 forces, he
needed to calculate (10*9)*10, this reduces the math to about 900 relationships.
While this is more manageable, it is still quite painful. So he reduced it even
further to simply between the moon and the earth. From there, he assumed the moons
orbit was a circle. Bam. Now gravity becomes a simple matter of geometry, a well
known and understood field.

This is a lovely little history lesson, but what does it tell us about programming?

Programming is all about complexity. On even straightforward projects we wind up
with thousands of variables, hundreds of functions, dozens of classes, a few external
libraries, and maybe even an external service.

In order to build onto this system, we need to be able to understand it well enough
to manipulate it. Let\'s say we have a class with a function. That function calls a
function from another of your classes and one from the standard library.

This function can really only go wrong in two ways:
  * Our other classes behavior could change
  * The standard library gets updated

This is easy for us to grasp. It has only three relationships.

### Diagram here

But what happens if we add a dependancy on an external library?

All of a sudden, this method has *three* reasons it could fail.
  * Our other classes behaviour changes
  * The external library gets updatd
  * The standard library gets updated

What\'s even worse is now we have a similar problem to Newton with
gravitation. This function has 6 relationships.

### DIAGRAM HERE

What if we add even more function calls? Say, another external library?

### DIAGRAM HERE
We\'re up to four reasons this method will need to change, and 10 relationships!


Let's add another 3 method calls:

### DIAGRAM HERE

All of a sudden even though our reasons to change have only increased by 3,
the number of relationships comes up to 28!

We've got a regular little solar system here!

bla bla finish up

#### References
[Calculating the Moons Motion](http://www-istp.gsfc.nasa.gov/stargaze/Sgravity.htm)
[An Introduction to General Systems Thinking](http://www.smashwords.com/books/view/51948)




