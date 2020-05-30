---
title: Choosing Between Web UI Tooling and Libraries
layout: article
tags: [programming, architecture]
excerpt:
  <p>Building high quality software as a small team requires thoughtful focus.
  As primarily a back end or systems engineer, I rely heavily on well-designed
  UI tooling to offload cognitive overhead and stafy focused.</p> <p> Here's how
  I evaluate UI tooling and libraries for quality.</p>
---

[Zinc](https://zinc.coop) has been gently exploring HTML and CSS tooling for UI
prototyping. I tend to approach tooling and library selection from a
[buy/build/borrow](https://www.fastcompany.com/1113892/build-borrow-or-buy)
perspective, and personally landed pretty quickly on buying [TailwindUI] for two
reasons:

1. I am not particularly fluent in _visual design_; so having a professionally
   maintained library of off-the-shelf interaction-design components is a
   compelling value proposition.
2. My usage of [TailwindCSS] as a utility-first CSS framework has been quite
   pleasant. The maintainers leverage what we've learned from [Bootstrap],
   [Tachyons] and other utility-first UI tooling quite well.

As we discussed the decision-making process, I realized underneath my initial
"this feels good" response was a number of implicit architectural values.

1. I rely heavily on [Open/Closed] as an architectural decision-making
   principle.
2. I like _thoughtful_ programming. Thought is half of what it takes to build
   useful, reliable software. _Action_ is the other half.
3. I like _slow_ release cycles for breaking changes and _fast_ release cycles
   for adding improvements and resolving defects.

[open/closed]: https://en.wikipedia.org/wiki/Open%E2%80%93closed_principle
[bootstrap]: https://getbootstrap.com/
[tachyons]: https://tachyons.io/
[tailwindcss]: https://tailwindcss.com/
[tailwindui]: https://tailwindui.com/

## Applying The Open / Closed Principle

Many CSS and Component Libraries provide fully-featured components. When these
components apply the Open / Closed principle effectively, they follow one or two
paths:

1. They expect to be used _as-is_ within the system, and expose [affordances]
   for developers or designers to [_extend_ or _wrap_][extend-or-wrap] the
   component without needing to understand the underlying implementation.
2. They provide tiny pieces and a blueprint to assemble them into the desired
   component.

Both strategies are valid applications of the Open / Closed principle. Early in
my career, I gravitated towards relatively fully-formed components that could be
extended or wrapped. Libraries that prioritize this design structure often allow
for incredible initial productivity; and the longer these libraries and services
stay around, the better-shaped the affordances for extension become.

Over time, I have shifted more towards composing small-to-medium sized tools
into larger systems; with an eye for disposing of the underlying code. This is
due in no small part to how the economics of open source and free software play
out, with libraries falling out of maintenance as tech fashion moves to new
paradigms.

[affordances]:
  https://www.interaction-design.org/literature/book/the-glossary-of-human-computer-interaction/affordances
[extend-or-wrap]:
  https://www.thoughtworks.com/insights/blog/composition-vs-inheritance-how-choose

## Determining Thoughtfulness

Thoughtfulness is difficult to measure. Many projects bias towards _code_ and
_execution_ instead of _documentation_ and _community_. This is a classic
chicken-and-egg problem.

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

## Assessing the Release Cadence

Every project has a different tempo. Consider how often a release breaks
backwards compatibility or changes its user or programmer interface drastically
enough to require applications using the library to update their source code or
configuration.

Projects which release breaking changes frequently have higher carry-costs.
These costs may be trivial in well-capitalized and well-staffed organizations,
but can be debilitating in organizations with limited financial resources or a
limited labor force.

## So What To Choose?

I, personally, do not believe the _result_ of a decision is terribly important
so long as the _methodology_ for reaching a decision centers the group that will
live with the decision.

Personally, I prefer libraries like [TailwindUI] over libraries like [Bootstrap] due
to the level of thoughtfulness placed into their documentation, community and
implementation; and the reasonably clear boundaries that allow me to extend or
adjust components without needing to understand source code that lives outside a
particular project.
