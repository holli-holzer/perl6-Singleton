[![Build Status](https://travis-ci.org/holli-holzer/perl6-Singleton.svg?branch=master)](https://travis-ci.org/holli-holzer/perl6-Singleton)

NAME
====

Instance - Role that provides a singleton instance for a class

SYNOPSIS
========

    use Singleton;

    class Bar does Singleton[:type("salad")] {
        has $.type is rw = "";
    }

    say Bar.instance.type; # salad

DESCRIPTION
===========

Singleton is a role that implements the [singleton pattern](https://en.wikipedia.org/wiki/Singleton_pattern). You can pass it named arguments that will be used to initialize the singleton instance.

AUTHOR
======

    holli.holzer@gmail.com

COPYRIGHT AND LICENSE
=====================

Copyright © holli.holzer@gmail.com

License GPLv3: The GNU General Public License, Version 3, 29 June 2007 <https://www.gnu.org/licenses/gpl-3.0.txt>

This is free software: you are free to change and redistribute it. There is NO WARRANTY, to the extent permitted by law.
