---
layout: article
title: The Ruby & Symbol
tags: [code, ruby, tapas]
redirects:
  - /musings/the-ruby-&-symbol/
---
& is a powerful ruby operator, when you use it as a unary operator it has two
main use cases:

The most common is to pass an object as a block to a method, like this:

{% highlight ruby %}
[1,2,nil, 3].reject(&:nil?)
{% endhighlight %}

This calls `#to_proc` on the symbol `:nil?`, converts the result into a block,
and passes it to the reject method. A line by line breakdown looks something
like this:

{% highlight ruby %}
[1,2,nil, 3].reject(&:nil?)
[1,2,nil,3].reject(&(proc = :nil?.to_proc))
[1,2,nil,3].reject(&proc)
[1,2,nil,3].reject { |e| e.nil? }
{% endhighlight %}

The second is explicitly declaring a block by using the `&` in a method
definition:

{% highlight ruby %}
def print_results(&block)
  p block.yield
end

print_results { "bar" }
{% endhighlight %}

With an explicitly named block you can do useful things, like map a block to
all the columns in a table:

{% highlight ruby %}
def column_map(table, &block)
  table.map { |row| row.map(&block) }
end

column_map([[1,2,3],[4,5,6],[7,8,9]]) { |v| v + 5 }
{% endhighlight %}

And of course, explicitly named blocks still allow you to expand an object to a
block:

{% highlight ruby %}
column_map([[1,2,3],[4,5,6],[7,8,9]], &:odd?)
{% endhighlight %}

For more reading on the & operator, check out  _[The Ampersand Operator in
Ruby](http://ablogaboutcode.com/2012/01/04/the-ampersand-operator-in-ruby/)_ by
[Pan Thomakos](https://twitter.com/panthomakos).

I you want to grok blocks, I'd recommend the excellent _[Understanding Ruby
Blocks, Procs and
Lambdas](http://www.robertsosinski.com/2008/12/21/understanding-ruby-blocks-procs-and-lambdas/)_
by [Robert Sosinki](http://www.robertsosinski.com/)
