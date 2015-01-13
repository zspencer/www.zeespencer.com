---
layout: article
tags: [culture, leadership, beginner, mastery]
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
It's no secret there is a growing demand for technical and creative skills and
that our educational system is struggling to provide the skills to deliver
useful, working, modern products and services. This is further exacerbated by
our industries [unwillingness to look beyond a certain
archetype](https://modelviewculture.com/pieces/manufacturing-the-talent-shortage).

Companies are now realizing what science has told us for years: [framing the
problem effectively is the best way to encourage others to solve
it](http://en.wikipedia.org/wiki/Wason_selection_task#Explanations_of_performance_on_the_task)
and are responding by investing more heavily in employee training. Companies
such as
[Facebook](https://www.facebook.com/notes/facebook-engineering/facebook-engineering-bootcamp/177577963919),
[Thoughtworks](http://www.thoughtworks.com/products/courses/agile-object-oriented-boot-camp),
and [so](https://www.devmynd.com/jobs/apprenticeship),
[so](https://engineering.groupon.com/2012/software-apprenticeship/groupons-apprenticeship-program/),
[many](http://www.detroitlabs.com/apprentice/),
[more](http://www.8thlight.com/apprenticeship) are turning to the
retro-education (Retrocation?) technique of apprenticeship to train technical
team members.

Apprenticeship programs encourage learning on the job by creating social and
structural norms where it is safe to not know, to be wrong, and to make
mistakes. Even well structured apprenticeship programs may cause
[anxiety](/migitating-anxiety-on-software-teams/) which adds to a junior team
member's cognitive overhead and shrink their learning capacity.

I've found that the companies where junior team members are most successful share
common attributes:

* Frequent, high quality feedback.
* Tight integration on a team that does useful, valuable work.
* Budgets for continued education and training.
* Regular, intentional interactions with senior and executive level colleagues.
* Dedicated advocates for team members.
* Flexible organizational architecture.

### Frequent, High Quality Feedback

Delivering specific, actionable and kind feedback is [the most valuable
skill](http://www.pechakucha.org/presentations/the-most-valuable-skill) you can
build on your team. Without frequent, compassionate feedback small behavioral
concerns or technical misunderstandings become educational blockers. Just as the
cost to fix a bug increases the longer the fix is delayed, innacurate mental
models or behavioral patterns calcify into habits that take much more work to
rectify.

I recommend a four-pronged approach to delivering feedback:

* Frequent [pairing](#pairing) or [mobbing](#mobbing) on a feature or task.
* Integrated critical peer reviews of work output.
* 1 on 1 meetings between team members and their advocate.
* Regular full team retrospectives.

#### Pairing and Mobbing
Pairing and mobbing provide real-time opportunities to refine mental models and
behaviors. A solid, real-time collaborative working relationship is the best
learning tool ever.

Pairing is when two people on the same computer, drawing pad, or other creative
tool working on the same task. Pairing is a powerful tool for building a shared
understanding of technique, principles, and practices; as it allows ideas to
emerge which combine the best of both participants.

[Mobbing](http://mobprogramming.org) is similar to [pairing](#pairing), with the
added bonus of having even more context and understanding around the task.

Pairing and mobbing is especially helpful for junior team members as they are
given an opportunity to do real, useful, valuable work in an environment where
any grievous errors can be corrected immediately and new techniques, principles
and patterns can be introduced at the exact time they're most useful.

#### Regular, critical peer reviews

Building peer review into your work process creates an opportunity for
observing and re-aligning low-level concerns ("It looks like you're using a shade
of blue that's different than our style guide, why is that?") as well as
high-level concerns ("This part of our application seems to be collecting long
methods which take many arguments. How could we refactor it to encourage
smaller, composable parts?").

These reviews are best when they're independently useful pieces of work being
compared against the artifact without the work. For those using version control,
this review happens for every [submitted
patch](https://guides.github.com/introduction/flow/index.html).

*Reviews should never, ever block useful work being completed.* If the work
passes a very minimum level of quality (tests pass, adheres to style guide) then
it should be merged as soon as the path submitter it. This provides junior
contributors with confidence that their work is useful and meaningful while
still creating opportunities for learning via critical, specific, kind feedback
and ensuring a minimum level of quality of the work.

#### 1 on 1s Between a Team Member and an Advocate

As humans, we thrive on appreciation and connection. The surest sign you
appreciate someone is to support them in places that person lacks influence.

An advocate's role is to:

* Listen to and understand a team member and their emotional and intellectual
  connection to their day to day work.
* Encourage and refine suggestions for how the company can change to support the
  team member.
* Introduce, promote and advocate those changes in circles outside of the team
  members influence.
* Relay back realistic progress on the changes a team member is asking for.

Listening to and understanding a single team member at a time allows concerns to
surface that may be difficult or uncomfortable to discuss in team
retrospectives. By making 1 on 1s regular we create space for people who are
ignored in rough-and-tumble loudest-person-wins tech culture.

Because tech companies frequently over-value expertise and experience, junior
team members relevant, valuable insights into a culture can be ignored and
marginalized without dedicated space.

If your culture is especially rough and tumble, you may consider ensuring
advocates do not work directly with the team member they advocate for, as the
day-to-day baggage can be carried into these conversations.

#### Regular Full Team Retrospectives

Retrospectives are where a group gets together, reflects on the past month or
so, and discusses what they want to:

* Keep doing
* Start doing
* Do more of
* Stop doing
* Do less of

There are many [forms a retrospective can
take](http://www.amazon.com/Agile-Retrospectives-Making-Teams-Great/dp/0977616649),
but these 5 items are the main gist. 

Good retrospectives start with the [retrospective prime
directive](http://www.retrospectives.com/pages/retroPrimeDirective.html)

> Regardless of what we discover, *we understand and truly believe that
> everyone did the best job they could*, given what they knew at the time,
> their skills and abilities, the resources available, and the situation
> at hand.

Retrospectives, when time is allocated to address the issues brought up, can go
a long way towards creating a cohesive, functional, productive team. They are
especially useful for junior team members as good retrosepctives model a
productive, tension-resolving discussion; a skill that will serve them well
throughout their career and help them become the kind of team members that
proactively solve problems.

Retrospectives are not a cure all. In situations where trust is broken a
retrospective can cause more harm than good. *If any person cannot in good
conscience agree to the retrospective prime directive, that must be respected.*

In those cases, it is best for a conflict resolution specialist to investigate
potential bad actors, remove them if found, and rebuild trust.

### Tight Integration on a Team that Does Useful, Valuable Work
There's a minor anti-pattern where interns or junior team members are tossed
onto an unimportant side-project that doesn't matter if it lives or dies. While
I strongly advocate for [breakable
toys](http://chimera.labs.oreilly.com/books/1234000001813/ch05.html#breakable_toys)
there's no stronger signal that you don't trust or believe in someone than to
give them work that doesn't matter.

Of course, putting someone with little experience or judgement on a critical
project is also risky. We mitigate this risk by integrating junior team member
into teams where [frequent, high quality
feedback](#frequent-high-quality-feedback) is the status quo.

If none of your teams have a culture of compassionate feedback, find the one
that is most open or closest to the principles and focus on improving their
feedback skills over a few months before bringing on a junior team member. While
it can seem incredibly mechanistic, even highly experienced people can benefit
from specific, actionable and kind feedback.

### Continued Education and Training Budgets
When I was considering changing jobs from my first full time position I was
chatting with [Matt Heusser](http://xndev.com) about compensation and he said
something that stuck with me.

> Money is the secular form of value.

On it's face this looks obvious, yet it has powerful implications.  If a
company claims to value education or learning, it must also *spend money* on
learning and education.

If you plan to hire junior team members, provide them a dedicated budget to
improve their skills. Make it high enough to cover a dozen books, online
training courses, conferences (including travel and meals), and perhaps even
professional 1 on 1 training.

Make sure they understand that the budget is *for them*. They get to choose the
things that work best for their education and their interests. Make sure they
spend it. Training is an investment that pays off over months and years, but
money and time not spent learning can never be re-claimed.

Junior team members especially benefit from this because they have so much to
learn and absorb. There is so much upside potential it doesn't make sense to
pinch pennies here.

### Regular, Intentional Senior and Executive Interactions

At even small to medium sized companies, there can be an interaction gap between
the most junior and the most senior or executive colleagues. A companies
leadership sets values and principles that people throughout the company ascribe
to. Junior team members are often left out of the interactions that create and
share these principles and values; leaving them wondering what they're supposed
to do or what is even important.

By creating a collaborative culture between junior team members and senior team
members and executives we combine the freshest perspective with the strongest
judgement and the clearest, most bought-into vision. This is where the magic
happens.

### Dedicated Advocates for Team Members

As [mentioned previously](#on-1s-between-a-team-member-and-an-advocate),
advocacy for team members outside of their sphere of influence is important.
While the best managers and leaders do this already, formalizing it into the job
descriptions of your company engraines advocacy as valued, desired behavior.

### Flexible Organizational Structure

When bringing on team members without much experience it's possible the team
they're on or the role they're brought in for is not actually a good match. A
[flexible
organization](http://www.amazon.com/The-Corporate-Lattice-Achieving-Performance/dp/1422155161)
allows people to find where their existing and desired skills fit well with the
companies needs. Flexible organizations create opportunities for people to
transition across roles and teams as they develop skills and improve their
careers.

When a company over-values a specific set of skills and under-values others, it
disincentivizes people from doing the work they're best at in favor of the work
they are rewarded more for. Flexible organizations pay everyone well and
recognize the value of all the skills necessary to create, deliver and support
the organization.


* * *

Is your team or company interested in bringing on junior team members? I'd be
happy to <a class="lead-email" href="mailto: hello@zeespencer.com">listen to
your questions and provide advice or consulting</a>


Disagree with something I've said? I'd love to <a class="feedback-email" href="mailto:
hello@zeespencer.com">hear your thoughts.</a>
