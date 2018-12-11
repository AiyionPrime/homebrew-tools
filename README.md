aiyions homebrew tap
=====================

This is a [homebrew][brew] tap for formulae for software developed by me


Setup
-----

Using these formulae requires homebrew. If you have not yet installed homebrew,
a quick intro is on [their website][brew].

Once homebrew is installed, simply run:

    brew tap aiyionprime/tools

Use
---

To install software, just use `brew install` with the name of the formula. You
may wish to run `brew update` before hand to get the latest version of the
formulae. For example, to install the latest version of heimdallr:

    brew update
    brew install heimdallr

To upgrade software:

    brew update
    brew upgrade    # upgrade all software installed with homebrew
    brew upgrade heimdallr # update just the heimdallr formula


Contributing
------------

Please file bug reports and feature requests as GitHub issues against the individual project, not this repository.


References
----------
`brew help`, `man brew`, or the Homebrew [documentation][].

[brew]: https://brew.sh/
[documentation]: https://github.com/Homebrew/brew/blob/master/docs/README.md

