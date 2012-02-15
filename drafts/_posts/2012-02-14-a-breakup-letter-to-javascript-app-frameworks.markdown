---
layout: default
title: Breaking Up With Backbone
tags: [article, draft]
---


Dear Backbone,

It's been fun. We've had some incredible times together. But I just
don't see us working out.

Don't get me wrong, you have some nice features, your code base is relatively
clean, you have good test coverage, and features don't change drastically
between releases.

But you don't seem to understand what I want. I mean, yea, I *crave* a clear
separation of concerns between domain, persistance, and presentation layers. I
*demand* a way to keep my html free from javascript (and vice versa). I may even
sometimes want a way to play nicely with the browser history as people interact
broadly with my app.

But dammit, I don't need something that binds events for me. I don't need
something to determine which code to execute based upon which url I happen to be
on. I'll be damned if I start treating javascript like a "class inheritance"
system when it's prototypical. I sure as hell don't want to throw away years of
knowledge and experience with javascript to follow one of many competing half
baked idioms for javascript application structure.

Maybe I don't get it. Maybe it's me, not you. But let's face it: You don't
really help me be more productive. I mean, that's why I use rails in spite of
it's crazy desire to modify base objects, poor architecture, silly ActiveRecord
and absurd routing system. I can go from 0 to WebApp in about 5 minutes with
Rails. With you, it is closer to 30~45. Part of it is lack of practice, but part
of it is how little you actually do for me. Sure, your persistence layer is
fantastic.  But your views? Now you're just getting in the way of javascript's
event binding! Don't even get me started on routing. If a query variable is
part of the URL it breaks? Really?!

I'm all burnt out on javascript app frameworks. I think I'll stick
with jQuery.

I know it isn't sexy. I know 99% of jQuery plugins are giant pile of poo. I
know jQuery doesn't provide me with a reasonable way to separate my concerns.
That's where I lean on libraries like
[lawnchair](http://westcoastlogic.com/lawnchair/),
[pjax](http://pjax.heroku.com/), [handlebars](http://handlebarsjs.com/), and
[underscore](http://documentcloud.github.com/underscore/).

They don't make javascript into something else, they work equally well in
greenfield and legacy applications, and they can be used fairly independently.

Now it's up to me to ensure I don't create a big ball of mud. It's up to me to
make sure I seperate my concerns. It's up to me to follow the four rules of
simple design.

To be honest, that's kinda how I like it.
