---
title: Build a Command Line Remote Pairing Setup
layout: article
tags: [published, tmux, pairing, remote]
---

Over the past couple years I've done a bit of remote pairing. When I need a GUI
everything is pretty straightforward: [Join.me](http://join.me) for
screen/keyboard sharing and iPad with Skype or Google Hangout for video calls.
This is pretty bandwidth intensive and can be slow, so I'd rather keep as much
as I can in a terminal.

There's a few obstacles to that though:

*  I travel a lot, so my network location is random and I can't change the
   coffee shops firewall
*  I want to see anything my partner do
*  I want to add partners easily
*  I don't want to share any passwords.

Thankfully a remote virtual machine, SSH, and tmux let me meet all these
requirements. Hooray!

## Set up the remote server

I use [prgmr.com](http://prgmr.com/xen/) for my utility server provider.
They've got great support, don't overload their servers, and they love their
customers. This is a pretty low intensity server, so a 128MB instance is
probably fine.

Add two user accounts. One is for you to log in to and manage the server. Don't
even think about using root! The other is for your partners to log in with. I
use the name `pair` for mine.

For some distributions of \*nix you'll need to allow port forwarding over SSH.
To do this open up the servers sshd\_config as root (typically located at
`/etc/ssh/sshd_config`), find or add the  `AllowTcpForwarding` line, set it to
`yes`, and ensure it's uncommented.

### Configure your user

Your user's role on this server is to allow you to use SSH to forward a port on
the server to your system. To be honest, you don't need to change anything, but
I recommend using keys to access your server instead of a password. To do that,
you'll need to create an `authorized_keys` file in your `~/.ssh` directory.
This file must *be only accessible to your user* otherwise it will not be
accepted by any sane distributions ssh server. To make it yours and yours
alone, type `chmod 600 ~/.ssh/authorized_keys` before going forward.

Now, append your public key to the `~/.ssh/authorized_keys` file. Github
provides an [excellent tutorial on creating ssh
keys](https://help.github.com/articles/generating-ssh-keys) if you don't think
you have a public key.

From now on, typing `ssh <your-user>@<your-server>` will use key-pair
encryption to verify your identity; which is far more secure than meager
passwords. For an added security boost you may want to edit your
`/etc/ssh/sshd_config` and change `PasswordAuthentication` to `no` *after
you've verified logging in without a password works.*

### Configure the pair user

The pair user is where the magic happens. Login to the pair user, and create an
authorized keys file by typing `touch ~/.ssh/authorized_keys` and change it's
permissions `chmod 600 ~/.ssh/authorized_keys`!

#### Adding a partners public key

When we append a partners public key to the authorized\_keys file we want to
prefix it with the `command` ssh directive:

`command="ssh <my-user-name>@localhost -p 1337",no-port-forwarding,no-X11-forwarding,no-agent-forwarding <my-partners-public-key>`

This forces the incoming connection to execute an ssh command to connect to
localhost on port 1337, and once that is complete it will kill the connection.
The `no-(agent|port|X11)-forwarding` directives are another security
precaution. Now we can add anyone we want as a partner with very little fear.

Go ahead and add your public key as a partner for now, then from your local
machine type `ssh pair@<your-server>`. This should give you a message like
`ssh: connect to host localhost port 1337: Connection refused`

This is good! It means that you successfully connected as `pair` on your server
*and* it tried to connect to ssh on port 1337! Yay!

All that's left to do now is to generate an ssh key for the pair user, so log
back in to the server as `pair` and follow step 3 on the aforementioned [ssh
key tutorial](https://help.github.com/articles/generating-ssh-keys). This is
the key we'll give access rights to our machine; using the `command` directive
to always force them into joining an existing tmux session.

## Set up your machine

### Install tmux

If you're on a Mac I recommend installing tmux through
[homebrew](http://mxcl.github.com/homebrew/). Most Linux distributions come
with it as a package in their standard repository now a days.

### Set up your local ssh server and authorized\_keys

If you're on a mac, you'll need to [enable remote
login](http://osxdaily.com/2011/09/30/remote-login-ssh-server-mac-os-x/). If
you're a Linux person make sure you have the sshd package installed and the
service running.

Once that's done, set up your authorized\_keys for your local machine: `touch
~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys`

Now take the public key you created for the pair username, and add it to the
end of your `~/.ssh/authorized_keys` file, like so:

`command="tmux attach",no-port-forwarding,no-X11-forwarding,no-agent-forwardin <pair-users-ssh-public-key>`


### Test it out

From your local machine open a new terminal and type `ssh -R1337:localhost:22
<your-user>@<your-server>` . This sets up the network forwarding stuff. Yay!

From a second terminal, type in `ssh pair@<your-server>`. This should give you
at least these two lines:  `no sessions` and `Connection to localhost closed`.

The `no sessions` line is letting us know tmux doesn't have anything to attach
to. the `Connection to localhost closed` is letting us know that we were kicked
off the system. As we should be!

Now, on *another* terminal launch `tmux`, then from the second terminal try
`ssh pair@<your-server>` again. If all goes well, you should see the contents
of the third terminal in the second terminal, and it should redraw pretty fast.

### Further enhancements

This is my vanilla command line remote pairing environment. If you want more
power, there's a few things you should do:

* Read the [tmux book](http://pragprog.com/book/bhtmux/tmux)
* Enhance tmux with [wemux](https://github.com/zolrath/wemux) or [vimux](https://github.com/benmills/vimux)
* Look into [mosh](http://mosh.mit.edu/) as an ssh alternative. It's supposed to be great for low-bandwidth situations.
