NAME
    `Lingua::EN::Infinitive' - Determine the infinitive form of a
    conjugated word

SYNOPSIS
            use Lingua::EN::Infinitive;

            my($spell) = Lingua::EN::Infinitive -> new();
            my($word)  = 'rove';

            # Method 1:
            my($word1, $word2, $suffix, $rule) = $spell -> stem($word);

            # Method 2:
            $spell -> stem($word);
            my($word1, $word2, $suffix, $rule) =
            (
                    $spell -> {'word1'},  # A possibility.
                    $spell -> {'word2'},  # A possibility, or ''.
                    $spell -> {'suffix'},
                    $spell -> {'rule'},
            );

            print "Conjugated: $word. Infinitive: $word1. \n";

DESCRIPTION
    Determine the infinitive form of a conjugated word. Also,
    determine the suffix used to identify which rule to apply to
    transform the conjugated word into the infinitive form.

    Either 1 or 2 possible infinitives are returned. You must check
    that the first is really an English word. If it is, then it is
    the result. If it is not valid, then check the second.

    Failure to deconjugate is indicated by $word1 eq ''.

    In general, you can ignore the 3rd and 4th values returned from
    stem().

    The algorithm is based on McIlroy's article (see below), after
    first checking for irregular words.

    In the hash 'suffix2Rule', you'll see the key 'order'. This
    specifies the sort order in which to check McIlroy's rules. I've
    changed his ordering in a number of places.

INSTALLATION
    You install `Lingua::EN::Infinitive', as you would install any
    perl module library, by running these commands:

            perl Makefile.PL
            make
            make test
            make install

    If you want to install a private copy of
    `Lingua::EN::Infinitive' in your home directory, then you should
    try to produce the initial Makefile with something like this
    command:

            perl Makefile.PL LIB=~/perl
                    or
            perl Makefile.PL LIB=C:/Perl/Site/Lib

    If, like me, you don't have permission to write man pages into
    unix system directories, use:

            make pure_install

    instead of make install. This option is secreted in the middle
    of p 414 of the second edition of the dromedary book.

WARNING
    Don't make the false assumption that

            "$word1$suffix" eq $word
                    or
            "$word2$suffix" eq $word

REFERENCE
            Title:   Development of a Spelling List
            Author:  M. Douglas McIlroy
            Journal: IEEE Transactions on Communications
            Issue:   Vol COM-30, No 1, January 1982

AUTHOR
    `Lingua::EN::Infinitive' was written by Ron Savage
    *<rpsavage@ozemail.com.au>* in 1998.

LICENCE
    This program is free software; you can redistribute it and/or
    modify it under the same terms as Perl itself.

