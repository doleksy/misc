Setting up my blogs on Codio
============================

1.  Create new Codio project (named blogs)
2.  Following instructions in [misc] to setup .bashrc, .gitconfig, etc...
3.  `gem install middleman`
4.  `cd workspace`
5.  `middleman init <my_project> --template=html5`
6.  `cd <my_project>`
7.  Add the following to the `Gemfile`
    - `gem "middleman-blog"`
    - `gem "middleman-syntax"`
    - `gem "middleman-gh-pages"`
8. Create a new `Rakefile` and add `require 'middleman-gh-pages'` to it
9.  `bundle install`

---
[misc]: https://github.com/doleksy/misc/blob/master/README.md
