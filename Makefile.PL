#!/usr/gnu/bin/perl -w

use ExtUtils::MakeMaker;

WriteMakefile
(
'clean'				=>
	{
	'FILES'			=> 'blib/* Makefile MANIFEST Lingua-EN-Infinitive*'
	},
'dist'				=>
	{
	'COMPRESS'		=> 'gzip',
	'SUFFIX'		=> 'gz',
	},
'DISTNAME'			=> 'Lingua-EN-Infinitive',
'NAME'				=> 'Lingua::EN::Infinitive',
'PM'				=>
	{
	'Infinitive.pm' => '$(INST_LIBDIR)/Infinitive.pm',
	},
'VERSION_FROM'		=> 'Infinitive.pm',
);
