use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

WriteMakefile
(
	($] ge '5.005') ?
	(
		'AUTHOR' => 'Ron Savage (ron@savage.net.au)',
		'ABSTRACT' => 'Find the infinitive form of a conjugated word',
    ) : (),
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
