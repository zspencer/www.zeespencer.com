---
layout: article
tags: [software-as-craft, mastery, culture]
ctas:
  - location: bottom
    selector: '.feedback-email'
    color: Red
    CTA: Email me
    category: Contact
  - location: bottom
    selector: '.lead-email'
    color: Red
    CTA: Email me
    category: Contact
---

Code review gets a bad rap, especially in 'Agile' circles. The primary
arguments are that code reviews slow teams down, create conflict between team
members, or disempower team members by taking decision making authority away
from them.

I believe these anti-patterns indicate a team is using code review for
_criticism_ as opposed to _critique_. What's the difference? *Critique is
focused on  specific parameters, where criticism is unbound.*

That said, many programmers are unclear how to constrain code reviews to a
managable set of concerns. The following are a series of suggestions which may
help move code reviews from criticism to critique:

* [Start with compassion](#start-with-compassion)
* [Working code wins](#working-code-wins)
* [Discuss clarity, coupling, cohesion, and encapsulation](#discuss-clarity,-coupling,-cohesion,-and-encapsulation)
* [Celebrate intentionally](#celebrate-intentionally)
* [Follow up](#follow-up)

## Start With Compassion
Begin each review by reflecting on the context of the person submitting the
code. Are they experienced team members or novices? Do you have good rapport
with them? Are they under schedule or personal or professional pressure?

I like to start by reminding myself of a variation on the retrospective prime
directive; the submitter is doing the best they can given their past
experiences and current context. This isn't to say if the work is of poor
quality they are above reproach; but that even in the absolute worst case, the
submitter is not a bad actor intentionally causing harm.

## Working Code Wins
Code review is often used as a gate to prevent technically concerning code from
entering the system. I believe this is a flawed approach to code review; as it
introduces an unpredictable amount of latency in a workflow. Instead, I prefer
to merge code right away, so long as the submitter has reasonable
confidence that the change causes benefits from the user or business
perspective.

* Do we understand the goals of the change?
* Does it meet our understanding of their needs?
* May the change cause unintended side effects?

If the code can be said to be working; then it may be merged ASAP. This means
that code review for a piece of work may continue *past* a change being
released into production.

That said, having some guidelines about what it means to be confident in a
change is powerful:

* Does the change update the user facing documentation?
* Do tests demonstrate the features functionality? These don't need to go
  through the UI, especialls when there's reasonable confidence in the code
  connecting the interface to the feature.
* Is there an image, gif, or video demonstrating the feature in use attached
  to the change? This makes it much easier for team members to evaluate the
  change from a users perspective.

I prefer a workflow where anyone may carry forward or merge a change; as this
encourages low cycle times, high flow, and tight collaboration between team
members.

## Discuss Clarity, Coupling, Cohesion, and Encapsulation
Code reviews can sometimes focus on style over substance. I prefer to ban
stylistic comments by integrating linters or automated style checkers into the
build. This frees up team members to focus on how a change impacts
maintainability of the sofware. The four aspects I recommend focusing on are
clarity, coupling, cohesion, and encapsulation.


### Clarity - What Does This Code Mean?
Clarity is focused on names, documentation, tests, types, etc.  Clear code
helps future maintainers to understand the intent of the code as well as the
implementation. Are the commit messages and notes coherent? Are the names of
variables and methods reasonable? Is the public surface area and implementation
sizes of functions or namespaces reasonable? Are there usage examples? Are
types or shapes of data demonstrated or enforced?

Unclear code is often an indicator that a change lacks cohesion, has
unnecessary coupling, or poorly encapsulates the goal of the change. It can
also signal the goals of the change are uncertain.


### Coupling - What Does This Code Work With?
Coupling is when changes to other components may require changes in
this section of code. How many external collaborators are used to do the work?
How deeply does this code reach into it's collaborators? How many of their
functions are being used? In cases where coupling with external collaborators
is both wide and deep it can be valuable to create an intermediary that sits
between the collaborators and this code.

By drawing attention to coupling, we may reduce the cost of future change so
long as we don't decrease clarity while doing so.


### Encapsulation - How Will Others Use This Code?
While coupling is how a component interacts with outside collaborators;
encapsulation is how outside consumers interact with a given component. One
indicator of a loosely encapsulated component is difficulty in testing. A
component that is hard to test is difficult to use. This is likely because the
the code unintentionally exposes it's implementation. Sometimes the difficulty
in testing is hidden behind test helpers; where a more effective approach may
be to improve the interface of the component itself.

Long argument lists, callbacks, option hashes with required keys, and parameter
objects are all indicators of loose encapsulation. In many cases these are
completely reasonable; after all reducing the surface area of an interface
likely diminishes it's utility. In other cases, it's a sign the component may
be doing too much.

When we draw attention to codes encapsulation during review, it creates an
opportunity to simplify interfaces and decrease the cost of re-using a
component.

### Cohesion - What Is The Codes Job?
The clearest example of non-cohesive code is a horror story from my youth.
There was a SQL query which had hardcoded values it would return in order to
change the color of a label. The argument could be made that this encapsulated
the behavior of the feature; but in doing so it mixed the responsibility of
retrieving data with the responsibility of presenting the data. Cohesive code
eschews additional responsibilities wherever it can; resulting in horizontal
layers and vertical slices.

By drawing attention to the cohesion of code we create opportunities to improve
clarity by grouping related functionality and un-grouping un-related
functionality. This un-related functionality may become either a collaborator or a
consumer of the component it was extracted from.

When we frame our code review in terms of clarity, coupling, encapsulation, and
cohesion we change the focus from the programmer and place it squarely on the
artifact. It also moves us out of the world of moral judgement such as what's
the "best" way to do something and into a conversation about the
tradeoffs that we make as we build a software system together.

## Celebrate Intentionally
Despite our best intentions; no matter how well a code review goes it is still
a high pressure situation for the submitter. No matter how I try, I still feel
a bit sad when someone critiques my code. To counter the inevitable bummer of
critical feedback I try to comment on parts of the code that are of high quality
or teach me something. It can also help to use celebratory emoji.

The important part is to always be genuine in your celebration; as it is often
impossible to discern between sarcasm or mockery and genuine excitement or
positivity. Especially for people who struggle to value their own contributions
already.

## Follow Up
If there's valuable changes to be made from code review but the work was merged
already; it's OK to add the desired changes in your task or project tracking
system. I generally prefer that the team has sole discretion on when to
complete those tasks; as they'll have a better understanding of the cost of
delaying clean up as well as the impact that maintainability improvements will
have on short and long term goals.


## Conclusion

Overall, I believe a compassionate, critique-oriented code review practice
results in high quality code and allows companies to include team members who
struggle with pair or mob programming.

