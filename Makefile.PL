use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

WriteMakefile
(
'clean'				=>
	{
	'FILES'			=> 'blib/* Makefile MANIFEST Lingua-EN-Infinitive-*'
	},
'dist'				=>
	{
	'COMPRESS'		=> 'gzip',
	'SUFFIX'		=> 'gz'
	},
'DISTNAME'			=> 'Lingua-EN-Infinitive',
'NAME'				=> 'Lingua::EN::Infinitive',
'PM'				=>
	{
	'Infinitive.pm'	=> '$(INST_LIBDIR)/Infinitive.pm',
	},
'PREREQ_PM'			=> {},
'VERSION_FROM'		=> 'Infinitive.pm'
);
