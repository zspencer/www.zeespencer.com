---
layout: article
title: Using Nil Effectively
tags: [tapas, ruby, code, draft]
---


    def iterable_fetch_val(index)
      data = "1234567890"
      data[index]
    end

    index = 0
    while iterable_fetch_val(index)
      p iterable_fetch_val(index)
      index += 1
    end





    def uniterable_fetch_val(index)
      data = "1234567890"
      data[index] || ""
    end

    index = 0
    until uniterable_fetch_val(index).empty?
      p uniterable_fetch_val(index)
      index += 1
    end



    def nil_split_on_comma(string)
      return nil unless string.include? ","
      string.split(",")
    end

    p nil_split_on_comma("asdf,qwer")
    p nil_split_on_comma("asdfqwer")




    def empty_array_split_on_comma(string)
      return [] unless string.include? ","
      string.split(",")
    end

    p better_split_on_comma("asdf,qwer")
    p better_split_on_comma("asdfqwer")
