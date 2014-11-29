---
title: The Vim Lovers Guide to Editing Clojure
layout: article
tags: [clojure, devenvironment, vim, code]
---

I've recently started a Clojure gig, which has a pretty emacs-oriented language
ecosystem. Emacs uses Cider and Paredit to make it super easy to:

1. Move parenthesis around S-Expressions (aka 'slurping' and 'barfing')
2. Access a Clojure REPL
3. Surround lines, words, etc. with parenthesis, braces, brackets and quotes

Unfortunately I don't really know emacs and would rather focus on learning a
language than an editor; so I set out to find vim equivalents. Wonder of
wonders, I happened upon:

1. `vim-fireplace` for dead-simple REPL functionality, jump-to-source, omni-complete, and a host of other goodies
2. `surround.vim` for changing, adding and removing braces, parenthesis, etc
3. `paredit.vim` for slurping and keeping parenthesis matching

### Vim Fireplace
Vim Fireplace is by none other than The Lord of Viml himself, Tim Pope. By
default it connects to the repl defined in `target/repl-port` which makes it
pretty drop-in-and-go. Some of my favorite normal mode commands:

1. `cpp` - Evaluate the s-expression and print the results
2. `K`   - Print the Clojure documentation for the symbol under the cursor
3. `cqc` - Open a mini-repl for executing arbitrary Clojure code
4. `cqq` - Open a mini-repl, with the current S-expression pre-entered
5. `[d`  - Print the Clojure source for the symbol under the cursor
6. `[C-d`  - Go to the definition of the symbol under the cursor

It also comes with some nice command mode helpers as well:

1. `:A` - Opens the test file for the given source file in the current buffer
   (and vice versa). `AV`/`AS`/`AT` are similar but are vsplit, split, and tab
   respectively.
2. `:Apropos <keyword>` - Searches the current class path for symbols which
   match the keyword
3. `:Eval <clojure code>` - Executes arbitrary Clojure code and prints the result

### Surround.vim
Surround.vim (also by Tim Pope) is great for manipulating parenthesis, quotes,
or brackets around your code. While initially designed for manipulating XML
documents and swapping tags, it's definitely a handy tool for a new-found lisper.
Some normal mode commands:

1. `ys<motion><char>` - E.g. `ys$"` surrounds the current line with quotation
   marks I use "You're surrounded `motion` by `char`!" for a mnemonic for this
2. `cs<motion><current-char><new-char>` - Change Surrounding, E.g. `cs([`
   changes `(foo) to [foo]`
3. `ds<char>` - Deletes the surrounding character. E.g. `ds(` would change
   `((foo))` to `(foo)`

### Paredit.vim
Paredit.vim by Tamas Kavacs was extracted from Slimv, a much broader alternative
to vim-fireplace. Paredit.vim keeps your parenthesis  well balanced, as well as
builds in slurping and barfing for your S Expressions.

Paredit.vim is reasonably good, but if you use `\` for your `leader` key you'll
want to add `let g:paredit_leader = '\'` to your `.vimrc`

Unfortunately I've found it's possible to accidentally unbalance your code,
making paredit.vim start to get in the way. The best way I've found to resolve
this is to select the offending character in visual mode and use `X` to delete
it. This is because  paredit does not seem to override `X` in visual mode.

### Happy ClojureVimming!

Overall, I'm pretty happy with this setup for now.  It gives enough
functionality for me to focus on Clojure instead of the editor. Admittedly, I'll
probably want to pick up emacs as soon as I'm reasonably comfortable in clojure.
