---
title: What Mom and Dad Need to Know About the Rails Security Exploit
layout: article
tags: [programming]
---

Dear Mom, Dad, Gramma, Brothers, Aunts and Uncles

I've got some bad news. You may have some work to do to keep your private
information safe and prevent people from being able to impersonate you on the
Internet.

As you know, I'm a computer programmer. Or a nerd. Or whatever. Essentially
people give me money to sit on my butt and get fatter. Yes Mom, I know I haven't
called in a few weeks. I'm sorry. Anyway, my people have really let you all down
right now.

<!--more-->

You see, there's a problem with the Internet right now. It's even worse because
Facebook, Twitter, and Google are central to our digital lives.

You know how when you sign in to Yelp on your phone it asks you to log in with
Facebook? Or how more and more web pages ask you to Log in with Google? Well,
that's gotten a bit more dangerous in the last month.

Essentially there is a security problem in a very common framework, called Ruby
on Rails. This framework runs a lot of websites. Websites like
[Meetup.com](http://meetup.com), tons of facebook games, and quite a few
business applications like [Harvest](http://www.getharvest.com/)

If an app you added on Facebook, Twitter, Google or LinkedIn is compromised it
gives the attacker the ability to do whatever that app is allowed to do on
facebook, twitter, google or linked in.

Even worse many of the applications we developers make are greedy about what we
want you to allow the app to do. Some social games require you to give them the
right to post things on your friends timeline before they'll even let you play!
What dirtbags, right?

I figured I should apologize for all of us, as well as inform you of the risks
that you are now being exposed to, as well as what steps to take to make
yourself a little safer.

### Protecting Your Google Accounts

Google is the largest concern for me. I use it to log in to all kinds of things
and it has tons of my personal data in it. Including client lists, budgets, and
things like that.

Apps you log in to with Google can access all kinds of things; like your
contacts, email, calendar, documents in google drive, and even your chat history
if you use google chat!

Thankfully it's pretty straightforward to revoke access with Google, though a
bit time consuming. They have a
[support page explaining how](http://support.google.com/accounts/bin/answer.py?hl=en&answer=41236),
located here:
[http://support.google.com/accounts/bin/answer.py?hl=en&answer=41236](http://support.google.com/accounts/bin/answer.py?hl=en&answer=41236)

### Protecting Your Facebook Account

Most Facebook apps are allowed to get your contact information, many can post
status or pictures, and a few can add or remove friends.

If your not cool that some stranger on the Internet can someday possibly
impersonate you on Facebook, even if you change your password you may want to
follow
[these instructions](http://howto.cnet.com/8301-11310_39-57347928-285/how-to-revoke-facebook-app-permissions/).

I know, I know. It's painful. You have to click twice per app you want to
remove, and if you're like me you somehow have accumulated dozens of them over
the years. Oops. I'll think twice before logging in with facebook!

### Protecting Your Linked In Account

Most LinkedIn apps can access your personal information, as well as post updates
to your timeline. Some can update your work history, or send private messages.

It's easy to
[revoke access on LinkedIn](http://www.linkedin.com/answers/using-linkedIn/ULI/868108-1020804),
especially because there are so few apps for the platform!

### Protecting Your Twitter Account

Most twitter apps can update your status, some can send DMs. A lot of my
personal brand is tied up in Twitter, so this is more important for me than
LinkedIn, but I'm assuming the opposite is true for you.

[Revoking twitter access](https://support.twitter.com/articles/76052-how-to-connect-and-revoke-third-party-applications)
is a joy compared to Facebook!

### The Thrilling Conclusion

I would strongly recommend removing all access for Facebook, Twitter, Google,
and LinkedIn apps for the time being. If you _really need_ whatever app it was,
contact the apps support team and ask them if they are using rails, and if so if
they are up to date with the latest security patches. If they say yes, then
you're good to go!

I wish I could say this was all you should be worried about, but we're in for a
bumpy ride over the next few months.

### More Details

For a more detailed understanding of the security exploit, you should read this
article by
[Patrick McKenzie](http://www.kalzumeus.com/2013/01/31/what-the-rails-security-issue-means-for-your-startup/).

<div class="call-to-action"><p>Are you a business owner or manager responsible
for a rails app? I'm available to help ensure your customers are safe. Just send
  me an email: <a href="mailto:
  zee@wecohere.com">zee@wecohere.com</a></p></div>
