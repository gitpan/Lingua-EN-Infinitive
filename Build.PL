use Module::Build;

my $class = Module::Build->subclass(code => <<'EOF');

sub find_test_files
{
	my $self = shift;
	my $files = $self->SUPER::find_test_files(@_);
	return [ grep {!/test\.pl$/} @$files ];
}

sub ACTION_test
{
	my $self = shift;
	$self->SUPER::ACTION_test(@_);
	$self->run_perl_script('test.pl', ['-Mblib='.$self->blib]);
}
EOF

$class -> new
(
	module_name		=> 'Lingua::EN::Infinitive',
	license			=> 'artistic',
	dist_author		=> 'Ron Savage <ron@savage.net.au>',
	build_requires	=>
	{
		Test::More	=> 0,
		Test::Pod	=> 0,
	},
	requires		=> {},
) -> create_build_script();