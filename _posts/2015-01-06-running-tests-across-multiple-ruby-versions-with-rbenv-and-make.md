---
layout: article
tags: [software, testing, ruby, devenvironment]
ctas:
  - type: link
    location: bottom
    id: send-email
    color: Red
    text: drop me a line
    CTA: Email me
    category: Contact
    type: Link
    pageSubject: "Running tests across multiple ruby versions with rbenv and make"
---

When writing [gems](http://glossary.codeunion.io/gem/), we frequently want to
verify behavior across a variety of ruby versions. While this is quite [easy
with travis
ci](http://docs.travis-ci.com/user/languages/ruby/#Choosing-Ruby-versions-and-implementations-to-test-against),
running microtests before pushing shrinks the likelihood of breaking the build.

My objectives were to:

 * Run tests against different ruby versions in parallel. I've got all these
   cores, why not use them?
 * Auto-run tests on file system changes.
 * Commands must be discoverable with tab-completion.
 * Adding additional versions must be relatively painless.

After a bit of prototyping, I settled on:

 * The [rbenv ruby version manager](https://github.com/sstephenson/rbenv)
 * [Wach](https://github.com/quackingduck/wach) for re-running a task on file
   system change.
 * [GNU Make](https://www.gnu.org/software/make/manual/) for defining tasks.

For those of you who want the code right now, grab my
[make-many-rubies](https://github.com/zspencer/make-many-rubies) repo. For those
interested in the thought process, read on.

### Make and Rake, Better Together.

Make is a powerful build system. While Rake is great for complex tasks that
require a language with functions and lists, Make
shines at discoverability ([free
tab-completion!](http://bash-completion.alioth.debian.org) woo!) and
cross-language support. 

I tend to have a Makefile in every project I work on which encapsulate the primary
commands:

 * `make run`     - Runs the project
 * `make test`    - Tests the project
 * `make build`   - Builds the project
 * `make release` - Releases the project artifact.
 * `make deploy`  - Deploys the project to production.
 * `make tbrd`    - Pronounced "Tee-bird" tests, builds, releases and deploys
                    the project.

These tasks allow projects to have a common interface no matter what
language, deployment strategy, or test framework we use.  Not every project has
every task of course; but the convention makes switching between different kinds
of projects in different languages a bit easier.

Did you find this helpful? I'd love to hear how you keep your code working
across multiple ruby versions or use make to create a common interface
across teams and projects!  Why not <a id="send-email" href="mailto:
hello@zeespencer.com">drop me a line</a>?
