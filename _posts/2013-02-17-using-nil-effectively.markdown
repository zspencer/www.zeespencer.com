---
layout: article
title: Using Nil Effectively
tags: [tapas, ruby, software]
---

We seem to use `nil`s in place of a default return value in a function. Say you
wanted to write a function that splits a string on its commas:

    def nil_split_on_comma(string)
      return nil unless string.include? ","
      string.split(",")
    end

While this seems reasonable it can have some unfortunate side effects:

    p nil_split_on_comma("asdfqwer").map(&:length)

Woops! Undefined method map for `nil` class! Let's try again!

    def better_split_on_comma(string)
      return [] unless string.include? ","
      string.split(",")
    end

    p better_split_on_comma("asdfqwer").map(&:length)

Ah! Much better! Because this function always returns an object of the same type
it can be used without checking the value! The astute reader will spot this as
an example of the [Null Object Pattern](http://c2.com/cgi/wiki?NullObject)

In spite of it's lack of suitability as a replacement for a reasonable default
value, I'm a fan of `nil`. I especially like it's use as a [null
terminator](http://en.wikipedia.org/wiki/Null_character):


    def iterable_fetch_val(index)
      data = "1234567890"
      data[index]
    end

    index = 0

    while iterable_fetch_val(index)
      p iterable_fetch_val(index)
      index += 1
    end

Here we're relying on the side effect that a `nil` value is also falsey. I'm
less edgey about this because this functions use case is an iterator, instead of
an accessor; but it's still a little iffy.

However, if you return an empty string instead of a falsey value it requires an
additional method call to use as an iterator:

    def uniterable_fetch_val(index)
      data = "1234567890"
      data[index] || ""
    end

    index = 0
    until uniterable_fetch_val(index).empty?
      p uniterable_fetch_val(index)
      index += 1
    end


As you can see, `nil`'s aren't all bad. However they should be used with
precision. Think about how varyied return types can cause complexity to move
through the code.
