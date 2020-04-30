---
title: How to Choose CSS Tooling Libraries?
layout: article
tags: [programming, architecture]
excerpt:
  <p>I've heard many ways to frame the tradeoff in work conditions that optimize
  contributors' work productivity and managers' work productivity.</p> <p>While
  I agree that some kinds of work are best suited to specific work conditions,
  I'm unconvinced a manager versus individual contributor framing is helpful
  when attempting to determine how to structure my workday.</p>
---

[Zinc](https://zinc.coop) has been gently exploring HTML and CSS tooling for UI
prototyping. We started by purchasing a license for
[TailwindUI](https://tailwindui.com/). I tend to approach purchasing decisions
from a
[buy/build/borrow](https://www.fastcompany.com/1113892/build-borrow-or-buy)mus
perspective, and landed pretty quickly on borrow/buy for two reasons:

1. I am not particularly fluent in _visual design_; so having a professionally
   maintained library of off-the-shelf interaction-design components is a
   compelling value proposition.
2. My usage of [TailwindCSS](https://tailwindcss.com/) as a utility-first CSS
   framework has been quite pleasant so for. We have learned much since when the
   first few releases of Bootstrap popularized a utility-class driven approach
   to UI development, and the maintainers of Tailwind have synthesized those
   learnings into their library quite well.

As we discussed the decision-making process I realized underneath my initial
"this feels good" response was a number of implicit architectural values.

1. I rely heavily on [Open/Closed] as an architectural decision-making
   principle.
2. I like _thoughtful_ programming. _Thought_ is half of what it takes to build
   reliable software, and _action_ is the other half.
3. I like _slow_ release cycles that include breaking changes, and _fast_
   release cycles for adding improvements and resolving defects.

[open/closed]: https://en.wikipedia.org/wiki/Open%E2%80%93closed_principle

## Applying The Open / Closed Principle in Relation to CSS Utility and Component Libraries

Many CSS and Component Libraries provide fully-featured components. When these
components apply the Open / Closed principle effectively, they follow one or two
paths:

1. They expect to be used _as-is_ within the system, and expose [affordances]
   for developers or designers to [_extend_ or _wrap_][extend-or-wrap] the
   component without needing to understand the underlying implementation.
2. They provide tiny pieces and a blueprint to assemble them into the desired
   component.

Both strategies are valid applications of the Open / Closed principle, though
most programmers tend to gravitate towards the first due to the emphasis on
inheritance in programming education.

## Determining Thoughtfulness

Thoughtfulness is difficult to measure. Many projects bias towards _code_ and
_execution_ instead of _documentation_ and _community_. This is rarely out of
malice, and often due to a chicken-and-egg problem.

How can you build a community around a project if the project isn't in a
functional state? How do you get a project to a functional state without pushing
forward on the implementation? When and how do we decide to discard behaviors
that served the project well in getting to a functional state are no longer
serving as we extend the breadth and depth of the product?

My current rubric is to evaluate the public discussion forums for a project. Do
they have an active asynchronous community support system? What about for
real-time community support? Do they have public documentation with a reasonable
information architecture that prioritizes discoverability?

I also tend to dive into the underlying code base and issue tracker. How timely
are responses to issues? Are patches left open? Or do maintainers do the work to
bring contributions home or gently redirect eager attention in a more productive
manner?

## Slow Release Cadence

Every project has a different tempo. The critical frequency to consider is how
often a release breaks backwards compatibility or changes its user or programmer
interface drastically enough to require the application using the library to
update its source code or configuration.

Projects which release breaking changes frequently tend to have higher
carry-costs, which may be trivial in well-capitalized and well-staffed
organizations, but can be debilitating in organizations with limited financial
resources or a limited labor force.

## So What To Choose?

I, personally, do not believe the _result_ of a decision is terribly important
so long as the _methodology_ for reaching a decision centers the needs and
values of the group that will live with the decision.

Personally, I will probably prefer libraries like Tailwind over libraries like
Bootstrap due to the level of thoughtfulness placed into their documentation,
community and implementation; and the reasonably clear boundaries that allow me
to extend or adjust components without needing to understand source code that
lives outside a particular project.

[affordances]:
  https://www.interaction-design.org/literature/book/the-glossary-of-human-computer-interaction/affordances
[extend-or-wrap]:
  https://www.thoughtworks.com/insights/blog/composition-vs-inheritance-how-choose
