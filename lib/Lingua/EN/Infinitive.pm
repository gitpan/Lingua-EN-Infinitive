package Lingua::EN::Infinitive;

# Name:
#	Lingua::EN::Infinitive.
#
# Documentation:
#	POD-style documentation is at the end. Extract it with pod2html.*.
#
# Tabs:
#	4 spaces || die.
#
# Author:
#	Ron Savage <ron@savage.net.au>
#	Home page: http://savage.net.au/index.html
#
# Licence:
#	Australian copyright (c) 1999-2002 Ron Savage.
#
#	All Programs of mine are 'OSI Certified Open Source Software';
#	you can redistribute them and/or modify them under the terms of
#	The Artistic License, a copy of which is available at:
#	http://www.opensource.org/licenses/index.html

use strict;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK);

require Exporter;

@ISA = qw(Exporter);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

@EXPORT		= qw();

@EXPORT_OK	= qw();

$VERSION	= '1.09';

# Preloaded methods go here.
# -------------------------------------------------------------------

sub new
{
	my($class)							= @_;
	$class								= ref($class) || $class;
	my($self)							= {};
	$self -> {'word1'}					= '';
	$self -> {'word2'}					= '';
	$self -> {'suffix'}					= '';
	$self -> {'rule'}					= '';
	$self -> {'irregular2infinitive'}	=
	{
		'abided'			=> 'abide',
		'abode'				=> 'abide',
		'am'				=> 'be',
		'are'				=> 'be',
		'arisen'			=> 'arise',
		'arose'				=> 'arise',
		'ate'				=> 'eat',
		'awaked'			=> 'awake',
		'awoke'				=> 'awake',
		'bade'				=> 'bid',
		'beaten'			=> 'beat',
		'became'			=> 'become',
		'been'				=> 'be',
		'befallen'			=> 'befall',
		'befell'			=> 'befall',
		'began'				=> 'begin',
		'begat'				=> 'beget',
		'begot'				=> 'beget',
		'begotten'			=> 'beget',
		'begun'				=> 'begin',
		'beheld'			=> 'behold',
		'bent'				=> 'bend',
		'bereaved'			=> 'bereave',
		'bereft'			=> 'bereave',
		'beseeched'			=> 'beseech',
		'besought'			=> 'beseech',
		'bespoke'			=> 'bespeak',
		'bespoken'			=> 'bespeak',
		'bestrewed'			=> 'bestrew',
		'bestrewn'			=> 'bestrew',
		'bestrid'			=> 'bestride',
		'bestridden'		=> 'bestride',
		'bestrode'			=> 'bestride',
		'betaken'			=> 'betake',
		'bethought'			=> 'bethink',
		'betook'			=> 'betake',
		'betted'			=> 'bet',
		'bidden'			=> 'bid',
		'bided'				=> 'bide',
		'bit'				=> 'bite',
		'bitten'			=> 'bite',
		'bled'				=> 'bleed',
		'blended'			=> 'blend',
		'blent'				=> 'blend',
		'blessed'			=> 'bless',
		'blest'				=> 'bless',
		'blew'				=> 'blow',
		'blown'				=> 'blow',
		'bode'				=> 'bide',
		'bore'				=> 'bear',
		'born'				=> 'bear',
		'borne'				=> 'bear',
		'bought'			=> 'buy',
		'bound'				=> 'bind',
		'bred'				=> 'breed',
		'broadcasted'		=> 'broadcast',
		'broke'				=> 'break',
		'broken'			=> 'break',
		'brought'			=> 'bring',
		'browbeaten'		=> 'browbeat',
		'built'				=> 'build',
		'burned'			=> 'burn',
		'burnt'				=> 'burn',
		'came'				=> 'come',
		'caught'			=> 'catch',
		'chid'				=> 'chide',
		'chidden'			=> 'chide',
		'chided'			=> 'chide',
		'chose'				=> 'choose',
		'chosen'			=> 'choose',
		'clad'				=> 'clothe',
		'clave'				=> 'cleave',
		'cleaved'			=> 'cleave',
		'cleft'				=> 'cleave',
		'clothed'			=> 'clothe',
		'clove'				=> 'cleave',
		'cloven'			=> 'cleave',
		'clung'				=> 'cling',
		'costed'			=> 'cost',
		'could'				=> 'can',
		'crept'				=> 'creep',
		'crew'				=> 'crow',
		'crowed'			=> 'crow',
		'dealt'				=> 'deal',
		'did'				=> 'do',
		'done'				=> 'do',
		'dove'				=> 'dive',
		'drank'				=> 'drink',
		'drawn'				=> 'draw',
		'dreamed'			=> 'dream',
		'dreamt'			=> 'dream',
		'drew'				=> 'draw',
		'driven'			=> 'drive',
		'drove'				=> 'drive',
		'drunk'				=> 'drink',
		'dug'				=> 'dig',
		'dwelled'			=> 'dwell',
		'dwelt'				=> 'dwell',
		'eaten'				=> 'eat',
		'fallen'			=> 'fall',
		'fed'				=> 'feed',
		'fell'				=> 'fall',
		'felt'				=> 'feel',
		'fled'				=> 'flee',
		'flew'				=> 'fly',
		'flown'				=> 'fly',
		'flung'				=> 'fling',
		'forbad'			=> 'forbid',
		'forbade'			=> 'forbid',
		'forbidden'			=> 'forbid',
		'forbore'			=> 'forbear',
		'forborne'			=> 'forbear',
		'fordid'			=> 'fordo',
		'fordone'			=> 'fordo',
		'forecasted'		=> 'forecast',
		'foregone'			=> 'forego',
		'foreknew'			=> 'foreknow',
		'foreknown'			=> 'foreknow',
		'foreran'			=> 'forerun',
		'foresaw'			=> 'foresee',
		'foreshowed'		=> 'foreshow',
		'foreshown'			=> 'foreshow',
		'foretold'			=> 'foretell',
		'forewent'			=> 'forego',
		'forgave'			=> 'forgive',
		'forgiven'			=> 'forgive',
		'forgot'			=> 'forget',
		'forgotten'			=> 'forget',
		'forsaken'			=> 'forsake',
		'forseen'			=> 'foresee',
		'forsook'			=> 'forsake',
		'forswore'			=> 'forswear',
		'forsworn'			=> 'forswear',
		'fought'			=> 'fight',
		'found'				=> 'find',
		'froze'				=> 'freeze',
		'frozen'			=> 'freeze',
		'gainsaid'			=> 'gainsay',
		'gave'				=> 'give',
		'gilded'			=> 'gild',
		'gilt'				=> 'gild',
		'girded'			=> 'gird',
		'girt'				=> 'gird',
		'given'				=> 'give',
		'gone'				=> 'go',
		'got'				=> 'get',
		'gotten'			=> 'get',
		'graved'			=> 'grave',
		'graven'			=> 'grave',
		'grew'				=> 'grow',
		'ground'			=> 'grind',
		'grown'				=> 'grow',
		'had'				=> 'have',
		'hamstringed'		=> 'hamstring',
		'hamstrung'			=> 'hamstring',
		'hanged'			=> 'hang',
		'heard'				=> 'hear',
		'heaved'			=> 'heave',
		'held'				=> 'hold',
		'hewed'				=> 'hew',
		'hewn'				=> 'hew',
		'hid'				=> 'hide',
		'hidden'			=> 'hide',
		'hove'				=> 'heave',
		'hung'				=> 'hang',
		'inlaid'			=> 'inlay',
		'is'				=> 'be',
		'kept'				=> 'keep',
		'kneeled'			=> 'kneel',
		'knelt'				=> 'kneel',
		'knew'				=> 'know',
		'knitted'			=> 'knit',
		'known'				=> 'know',
		'laded'				=> 'lade',
		'laden'				=> 'lade',
		'laid'				=> 'lay',
		'lain'				=> 'lie',
		'lay'				=> 'lie',
		'leaned'			=> 'lean',
		'leant'				=> 'lean',
		'leaped'			=> 'leap',
		'leapt'				=> 'leap',
		'learned'			=> 'learn',
		'learnt'			=> 'learn',
		'led'				=> 'lead',
		'left'				=> 'leave',
		'lent'				=> 'lend',
		'lighted'			=> 'light',
		'lit'				=> 'light',
		'lost'				=> 'lose',
		'made'				=> 'make',
		'meant'				=> 'mean',
		'melted'			=> 'melt',
		'met'				=> 'meet',
		'might'				=> 'may',
		'misdealt'			=> 'misdeal',
		'misgave'			=> 'misgive',
		'misgiven'			=> 'misgive',
		'mislaid'			=> 'mislay',
		'misled'			=> 'mislead',
		'mistaken'			=> 'mistake',
		'mistook'			=> 'mistake',
		'misunderstood'		=> 'misunderstand',
		'molten'			=> 'melt',
		'mowed'				=> 'mow',
		'mown'				=> 'mow',
		'outate'			=> 'outeat',
		'outbade'			=> 'outbid',
		'outbidden'			=> 'outbid',
		'outbred'			=> 'outbreed',
		'outdid'			=> 'outdo',
		'outdone'			=> 'outdo',
		'outeaten'			=> 'outeat',
		'outfought'			=> 'outfight',
		'outgone'			=> 'outgo',
		'outgrew'			=> 'outgrow',
		'outgrown'			=> 'outgrow',
		'outlaid'			=> 'outlay',
		'outran'			=> 'outrun',
		'outridden'			=> 'outride',
		'outrode'			=> 'outride',
		'outsat'			=> 'outsit',
		'outshone'			=> 'outshine',
		'outshot'			=> 'outshoot',
		'outsold'			=> 'outsell',
		'outspent'			=> 'outspend',
		'outthrew'			=> 'outthrow',
		'outthrown'			=> 'outthrow',
		'outwent'			=> 'outgo',
		'outwore'			=> 'outwear',
		'outworn'			=> 'outwear',
		'overate'			=> 'overeat',
		'overbade'			=> 'overbid',
		'overbidden'		=> 'overbid',
		'overblew'			=> 'overblow',
		'overblown'			=> 'overblow',
		'overbore'			=> 'overbear',
		'overborn'			=> 'overbear',
		'overborne'			=> 'overbear',
		'overbought'		=> 'overbuy',
		'overbuilt'			=> 'overbuild',
		'overcame'			=> 'overcome',
		'overdid'			=> 'overdo',
		'overdone'			=> 'overdo',
		'overdrawn'			=> 'overdraw',
		'overdrew'			=> 'overdraw',
		'overdriven'		=> 'overdrive',
		'overdrove'			=> 'overdrive',
		'overeaten'			=> 'overeat',
		'overfed'			=> 'overfeed',
		'overflew'			=> 'overfly',
		'overflown'			=> 'overfly',
		'overgrew'			=> 'overgrow',
		'overgrown'			=> 'overgrow',
		'overhanged'		=> 'overhang',
		'overheard'			=> 'overhear',
		'overhung'			=> 'overhang',
		'overladed'			=> 'overlade',
		'overladen'			=> 'overlade',
		'overlaid'			=> 'overlay',
		'overlain'			=> 'overlie',
		'overlay'			=> 'overlie',
		'overleaped'		=> 'overleap',
		'overleapt'			=> 'overleap',
		'overpaid'			=> 'overpay',
		'overran'			=> 'overrun',
		'overridden'		=> 'override',
		'overrode'			=> 'override',
		'oversaw'			=> 'oversee',
		'overseen'			=> 'oversee',
		'oversewed'			=> 'oversew',
		'oversewn'			=> 'oversew',
		'overshot'			=> 'overshoot',
		'overslept'			=> 'oversleep',
		'overspent'			=> 'overspend',
		'overtaken'			=> 'overtake',
		'overthrew'			=> 'overthrow',
		'overthrown'		=> 'overthrow',
		'overtook'			=> 'overtake',
		'overwinded'		=> 'overwind',
		'overwound'			=> 'overwind',
		'overwritten'		=> 'overwrite',
		'overwrote'			=> 'overwrite',
		'paid'				=> 'pay',
		'partaken'			=> 'partake',
		'partook'			=> 'partake',
		'prechose'			=> 'prechoose',
		'prechosen'			=> 'prechoose',
		'proved'			=> 'prove',
		'proven'			=> 'prove',
		'quitted'			=> 'quit',
		'ran'				=> 'run',
		'rang'				=> 'ring',
		'reaved'			=> 'reave',
		'rebuilt'			=> 'rebuild',
		'reeved'			=> 'reeve',
		'reft'				=> 'reave',
		'relaid'			=> 'relay',
		'rent'				=> 'rend',
		'repaid'			=> 'repay',
		'retold'			=> 'retell',
		'ridded'			=> 'rid',
		'ridden'			=> 'ride',
		'risen'				=> 'rise',
		'rived'				=> 'rive',
		'riven'				=> 'rive',
		'rode'				=> 'ride',
		'rose'				=> 'rise',
		'rove'				=> 'reeve',
		'rung'				=> 'ring',
		'said'				=> 'say',
		'sang'				=> 'sing',
		'sank'				=> 'sink',
		'sat'				=> 'sit',
		'saw'				=> 'see',
		'sawed'				=> 'saw',
		'sawn'				=> 'saw',
		'seen'				=> 'see',
		'sent'				=> 'send',
		'sewed'				=> 'sew',
		'sewn'				=> 'sew',
		'shaken'			=> 'shake',
		'shaved'			=> 'shave',
		'shaven'			=> 'shave',
		'sheared'			=> 'shear',
		'shined'			=> 'shine',
		'shod'				=> 'shoe',
		'shoed'				=> 'shoe',
		'shone'				=> 'shine',
		'shook'				=> 'shake',
		'shorn'				=> 'shear',
		'shot'				=> 'shoot',
		'showed'			=> 'show',
		'shown'				=> 'show',
		'shrank'			=> 'shrink',
		'shredded'			=> 'shred',
		'shrived'			=> 'shrive',
		'shriven'			=> 'shrive',
		'shrove'			=> 'shrive',
		'shrunk'			=> 'shrink',
		'shrunken'			=> 'shrink',
		'slain'				=> 'slay',
		'slept'				=> 'sleep',
		'slew'				=> 'slay',
		'slid'				=> 'slide',
		'slidden'			=> 'slide',
		'slung'				=> 'sling',
		'slunk'				=> 'slink',
		'smelled'			=> 'smell',
		'smelt'				=> 'smell',
		'smitten'			=> 'smite',
		'smote'				=> 'smite',
		'snuck'				=> 'sneak',
		'sold'				=> 'sell',
		'sought'			=> 'seek',
		'sowed'				=> 'sow',
		'sown'				=> 'sow',
		'span'				=> 'spin',
		'spat'				=> 'spit',
		'sped'				=> 'speed',
		'speeded'			=> 'speed',
		'spelled'			=> 'spell',
		'spelt'				=> 'spell',
		'spent'				=> 'spend',
		'spilled'			=> 'spill',
		'spilt'				=> 'spill',
		'spoiled'			=> 'spoil',
		'spoilt'			=> 'spoil',
		'spoke'				=> 'speak',
		'spoken'			=> 'speak',
		'sprang'			=> 'spring',
		'sprung'			=> 'spring',
		'spun'				=> 'spin',
		'stank'				=> 'stink',
		'staved'			=> 'stave',
		'stole'				=> 'steal',
		'stolen'			=> 'steal',
		'stood'				=> 'stand',
		'stove'				=> 'stave',
		'strewed'			=> 'strew',
		'strewn'			=> 'strew',
		'stricken'			=> 'strike',
		'strid'				=> 'stride',
		'stridden'			=> 'stride',
		'strived'			=> 'strive',
		'striven'			=> 'strive',
		'strode'			=> 'stride',
		'strove'			=> 'strive',
		'struck'			=> 'strike',
		'strung'			=> 'string',
		'stuck'				=> 'stick',
		'stung'				=> 'sting',
		'stunk'				=> 'stink',
		'sung'				=> 'sing',
		'sunk'				=> 'sink',
		'sunken'			=> 'sink',
		'swam'				=> 'swim',
		'sweated'			=> 'sweat',
		'swelled'			=> 'swell',
		'swept'				=> 'sweep',
		'swollen'			=> 'swell',
		'swore'				=> 'swear',
		'sworn'				=> 'swear',
		'swum'				=> 'swim',
		'swung'				=> 'swing',
		'taken'				=> 'take',
		'taught'			=> 'teach',
		'thought'			=> 'think',
		'threw'				=> 'throw',
		'thrived'			=> 'thrive',
		'thriven'			=> 'thrive',
		'throve'			=> 'thrive',
		'thrown'			=> 'throw',
		'told'				=> 'tell',
		'took'				=> 'take',
		'tore'				=> 'tear',
		'torn'				=> 'tear',
		'trod'				=> 'tread',
		'trodden'			=> 'tread',
		'unbent'			=> 'unbend',
		'unbound'			=> 'unbind',
		'unbuilt'			=> 'unbuild',
		'underbought'		=> 'underbuy',
		'underfed'			=> 'underfeed',
		'undergone'			=> 'undergo',
		'underlaid'			=> 'underlay',
		'underlain'			=> 'underlie',
		'underlay'			=> 'underlie',
		'underpaid'			=> 'underpay',
		'underran'			=> 'underrun',
		'undershot'			=> 'undershoot',
		'undersold'			=> 'undersell',
		'understood'		=> 'understand',
		'undertaken'		=> 'undertake',
		'undertook'			=> 'undertake',
		'underwent'			=> 'undergo',
		'underwritten'		=> 'underwrite',
		'underwrote'		=> 'underwrite',
		'undid'				=> 'undo',
		'undone'			=> 'undo',
		'undrawn'			=> 'undraw',
		'undrew'			=> 'undraw',
		'unfroze'			=> 'unfreeze',
		'unfrozen'			=> 'unfreeze',
		'ungirded'			=> 'ungird',
		'ungirt'			=> 'ungird',
		'unhanged'			=> 'unhang',
		'unhung'			=> 'unhang',
		'unknitted'			=> 'unknit',
		'unladed'			=> 'unlade',
		'unladen'			=> 'unlade',
		'unlaid'			=> 'unlay',
		'unlearned'			=> 'unlearn',
		'unlearnt'			=> 'unlearn',
		'unmade'			=> 'unmake',
		'unreeved'			=> 'unreeve',
		'unrove'			=> 'unreeve',
		'unsaid'			=> 'unsay',
		'unslung'			=> 'unsling',
		'unspoke'			=> 'unspeak',
		'unspoken'			=> 'unspeak',
		'unstrung'			=> 'unstring',
		'unstuck'			=> 'unstick',
		'unswore'			=> 'unswear',
		'unsworn'			=> 'unswear',
		'untaught'			=> 'unteach',
		'unthought'			=> 'unthink',
		'untrod'			=> 'untread',
		'untrodden'			=> 'untread',
		'unwinded'			=> 'unwind',
		'unwound'			=> 'unwind',
		'unwove'			=> 'unweave',
		'unwoven'			=> 'unweave',
		'upbuilt'			=> 'upbuild',
		'upheld'			=> 'uphold',
		'uprisen'			=> 'uprise',
		'uprose'			=> 'uprise',
		'upswept'			=> 'upsweep',
		'upswung'			=> 'upswing',
		'waked'				=> 'wake',
		'was'				=> 'be',
		'waylaid'			=> 'waylay',
		'wedded'			=> 'wed',
		'went'				=> 'go',
		'wept'				=> 'weep',
		'were'				=> 'be',
		'wetted'			=> 'wet',
		'winded'			=> 'wind',
		'wist'				=> 'wit',
		'wot'				=> 'wit',
		'withdrawn'			=> 'withdraw',
		'withdrew'			=> 'withdraw',
		'withheld'			=> 'withhold',
		'withstood'			=> 'withstand',
		'woke'				=> 'wake',
		'woken'				=> 'wake',
		'won'				=> 'win',
		'wore'				=> 'wear',
		'worked'			=> 'work',
		'worn'				=> 'wear',
		'wound'				=> 'wind',
		'wove'				=> 'weave',
		'woven'				=> 'weave',
		'written'			=> 'write',
		'wrote'				=> 'write',
		'wrought'			=> 'work',
		'wrung'				=> 'wring',
	};
	$self -> {'suffix2Rule'}			=
	{
		'hes'		=>
			{	# 'hes' is the suffix.
				# 'order' is the sort order.
				# 'rule' is the rule number.

				# 'word1' == 0 => Use 0, the index of the longest prefix
				#	within @{$prefix{$self->{'suffix'} } }, below.

				# 'word1' == 1 => Use 1, the index of the 2nd longest prefix
				#	within @{$prefix{$self->{'suffix'} } }, below.

				# 'word1' == -1 => Use the index of the shortest prefix
				#	within @{$prefix{$self->{'suffix'} } }, below + a letter.

				# 'word1' == -2 => Use the index of the shortest prefix
				#	within @{$prefix{$self->{'suffix'} } }, below + a letter,
				#	and use the shortest prefix as well.

				# 'word1' == -3 => Use the index of the shortest prefix
				#	within @{$prefix{$self->{'suffix'} } }, below + meter,
				#	and use the shortest prefix + metre as well.

				# 'word1' == -4 => Use the original string.

				'order'		=> 1011,
				'rule'		=> '1',
				'word1'		=> 0,	# Longest prefix.
				'suffix1'	=> '',
				'suffix2'	=> '',
			},
		'ses'		=>
			{
				'order'		=> 1021,
				'rule'		=> '2',
				'word1'		=> 0,	# Longest prefix.
				'suffix1'	=> '',
				'suffix2'	=> '',
			},
		'xes'		=>
			{
				'order'		=> 1031,
				'rule'		=> '3',
				'word1'		=> 0,	# Longest prefix.
				'suffix1'	=> '',
				'suffix2'	=> '',
			},
		'zes'		=>
			{
				'order'		=> 1041,
				'rule'		=> '4',
				'word1'		=> 0,	# Longest prefix.
				'suffix1'	=> '',
				'suffix2'	=> '',
			},
		'iless'		=>
			{
				'order'		=> 1051,
				'rule'		=> '43a',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> 'y',
				'suffix2'	=> '',
			},
		'less'		=>
			{
				'order'		=> 1052,
				'rule'		=> '43b',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> '',
				'suffix2'	=> '',
			},
		'iness'		=>
			{
				'order'		=> 1053,
				'rule'		=> '44a',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> 'y',
				'suffix2'	=> '',
			},
		'ness'		=>
			{
				'order'		=> 1054,
				'rule'		=> '44b',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> '',
				'suffix2'	=> '',
			},
		"'s"		=>
			{
				'order'		=> 1055,
				'rule'		=> '7',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> '',
				'suffix2'	=> '',
			},
		'ies'		=>
			{
				'order'		=> 1056,
				'rule'		=> '13a',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> 'y',
				'suffix2'	=> '',
			},
		'es'		=>
			{
				'order'		=> 1057,
				'rule'		=> '13b',
				'word1'		=> 0,	# Longest prefix.
				'suffix1'	=> '',
				'suffix2'	=> '',
			},
		'ss'		=>
			{
				'order'		=> 1061,
				'rule'		=> '6a',
				'word1'		=> -4,	# Original string.
				'suffix1'	=> '',
				'suffix2'	=> '',
			},
		's'			=>
			{
				'order'		=> 1062,
				'rule'		=> '6b',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> '',
				'suffix2'	=> '',
			},
		'ater'		=>
			{
				'order'		=> 1081,
				'rule'		=> '8',
				'word1'		=> -4,	# Original string.
				'suffix1'	=> '',
				'suffix2'	=> '',
			},
		'cter'		=>
			{
				'order'		=> 1091,
				'rule'		=> '9',
				'word1'		=> -4,	# Original string.
				'suffix1'	=> '',
				'suffix2'	=> '',
			},
		'ier'		=>
			{
				'order'		=> 1101,
				'rule'		=> '10',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> 'y',
				'suffix2'	=> '',
			},
		'er'		=>
			{
				'order'		=> 1111,
				'rule'		=> '11',
				'word1'		=> 0,	# Longest prefix.
				'suffix1'	=> '',
				'suffix2'	=> '',
			},
		'ied'		=>
			{
				'order'		=> 1121,
				'rule'		=> '12a',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> 'y',
				'suffix2'	=> '',
			},
		'ed'		=>
			{
				'order'		=> 1122,
				'rule'		=> '12b',	# There is extra code for 12b below.
				'word1'		=> 0,	# Longest prefix.
				'suffix1'	=> '',
				'suffix2'	=> '',
			},
		'iest'		=>
			{
				'order'		=> 1141,
				'rule'		=> '14a',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> 'y',
				'suffix2'	=> '',
			},
		'est'		=>
			{
				'order'		=> 1142,
				'rule'		=> '14b',
				'word1'		=> -2,	# Shortest prefix + a letter, and shortest prefix.
				'suffix1'	=> 'e',
				'suffix2'	=> '',
			},
		'blity'		=>
			{
				'order'		=> 1143,
				'rule'		=> '21',
				'word1'		=> -4,	# Original string.
				'suffix1'	=> '',
				'suffix2'	=> '',
			},
		'bility'		=>
			{
				'order'		=> 1144,
				'rule'		=> '22',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> 'ble',
				'suffix2'	=> '',
			},
		'fiable'		=>
			{
				'order'		=> 1145,
				'rule'		=> '23',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> 'fy',
				'suffix2'	=> '',
			},
		'logist'		=>
			{
				'order'		=> 1146,
				'rule'		=> '24',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> 'logy',
				'suffix2'	=> '',
			},
		'ing'		=>
			{
				'order'		=> 1151,
				'rule'		=> '15',	# There is extra code for 15 below.
				'word1'		=> -2,	# Shortest prefix + a letter, and shortest prefix.
				'suffix1'	=> 'e',
				'suffix2'	=> '',
			},
		'ist'		=>
			{
				'order'		=> 1161,
				'rule'		=> '16',
				'word1'		=> -2,	# Shortest prefix + a letter, and shortest prefix.
				'suffix1'	=> 'e',
				'suffix2'	=> '',
			},
		'ism'		=>
			{
				'order'		=> 1171,
				'rule'		=> '17',
				'word1'		=> -2,	# Shortest prefix + a letter, and shortest prefix.
				'suffix1'	=> 'e',
				'suffix2'	=> '',
			},
		'ity'		=>
			{
				'order'		=> 1181,
				'rule'		=> '18',
				'word1'		=> -2,	# Shortest prefix + a letter, and shortest prefix.
				'suffix1'	=> 'e',
				'suffix2'	=> '',
			},
		'ize'		=>
			{
				'order'		=> 1191,
				'rule'		=> '19',
				'word1'		=> -2,	# Shortest prefix + a letter, and shortest prefix.
				'suffix1'	=> 'e',
				'suffix2'	=> '',
			},
		'cable'		=>
			{
				'order'		=> 1201,
				'rule'		=> '20a',
				'word1'		=> -4,	# Original string.
				'suffix1'	=> '',
				'suffix2'	=> '',
			},
		'gable'		=>
			{
				'order'		=> 1202,
				'rule'		=> '20b',
				'word1'		=> -4,	# Original string.
				'suffix1'	=> '',
				'suffix2'	=> '',
			},
		'able'		=>
			{
				'order'		=> 1203,
				'rule'		=> '20c',
				'word1'		=> -2,	# Shortest prefix + a letter, and shortest prefix.
				'suffix1'	=> 'e',
				'suffix2'	=> '',
			},
		'graphic'		=>
			{
				'order'		=> 1251,
				'rule'		=> '25',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> 'graphy',
				'suffix2'	=> '',
			},
		'istic'		=>
			{
				'order'		=> 1261,
				'rule'		=> '26',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> 'ist',
				'suffix2'	=> '',
			},
		'itic'		=>
			{
				'order'		=> 1271,
				'rule'		=> '27',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> 'ite',
				'suffix2'	=> '',
			},
		'like'		=>
			{
				'order'		=> 1281,
				'rule'		=> '28',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> '',
				'suffix2'	=> '',
			},
		'logic'		=>
			{
				'order'		=> 1291,
				'rule'		=> '29',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> 'logy',
				'suffix2'	=> '',
			},
		'ment'		=>
			{
				'order'		=> 1301,
				'rule'		=> '30',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> '',
				'suffix2'	=> '',
			},
		'mental'		=>
			{
				'order'		=> 1311,
				'rule'		=> '31',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> 'ment',
				'suffix2'	=> '',
			},
		'metry'		=>
			{
				'order'		=> 1321,
				'rule'		=> '32',
				'word1'		=> -3,	# Shortest prefix + meter, and shortest perfix + metre.
				'suffix1'	=> 'meter',
				'suffix2'	=> 'metre',
			},
		'nce'		=>
			{
				'order'		=> 1331,
				'rule'		=> '33',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> 'nt',
				'suffix2'	=> '',
			},
		'ncy'		=>
			{
				'order'		=> 1341,
				'rule'		=> '34',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> 'nt',
				'suffix2'	=> '',
			},
		'ship'		=>
			{
				'order'		=> 1351,
				'rule'		=> '35',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> '',
				'suffix2'	=> '',
			},
		'ical'		=>
			{
				'order'		=> 1361,
				'rule'		=> '36',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> 'ic',
				'suffix2'	=> '',
			},
		'ional'		=>
			{
				'order'		=> 1371,
				'rule'		=> '37',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> 'ion',
				'suffix2'	=> '',
			},
		'bly'		=>
			{
				'order'		=> 1381,
				'rule'		=> '38',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> 'ble',
				'suffix2'	=> '',
			},
		'ily'		=>
			{
				'order'		=> 1391,
				'rule'		=> '39',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> 'y',
				'suffix2'	=> '',
			},
		'ly'		=>
			{
				'order'		=> 1401,
				'rule'		=> '40',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> '',
				'suffix2'	=> '',
			},
		'iful'		=>
			{
				'order'		=> 1411,
				'rule'		=> '41a',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> 'y',
				'suffix2'	=> '',
			},
		'ful'		=>
			{
				'order'		=> 1412,
				'rule'		=> '41b',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> '',
				'suffix2'	=> '',
			},
		'ihood'		=>
			{
				'order'		=> 1421,
				'rule'		=> '42a',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> 'y',
				'suffix2'	=> '',
			},
		'hood'		=>
			{
				'order'		=> 1422,
				'rule'		=> '42b',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> '',
				'suffix2'	=> '',
			},
		'ification'		=>
			{
				'order'		=> 1451,
				'rule'		=> '45',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> 'ify',
				'suffix2'	=> '',
			},
		'ization'		=>
			{
				'order'		=> 1461,
				'rule'		=> '46',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> 'ize',
				'suffix2'	=> '',
			},
		'ction'		=>
			{
				'order'		=> 1471,
				'rule'		=> '47',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> 'ct',
				'suffix2'	=> '',
			},
		'rtion'		=>
			{
				'order'		=> 1481,
				'rule'		=> '48',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> 'rt',
				'suffix2'	=> '',
			},
		'ation'		=>
			{
				'order'		=> 1491,
				'rule'		=> '49',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> 'ate',
				'suffix2'	=> '',
			},
		'ator'		=>
			{
				'order'		=> 1501,
				'rule'		=> '50',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> 'ate',
				'suffix2'	=> '',
			},
		'ctor'		=>
			{
				'order'		=> 1511,
				'rule'		=> '51',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> 'ct',
				'suffix2'	=> '',
			},
		'ive'		=>
			{
				'order'		=> 1521,
				'rule'		=> '52',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> 'ion',
				'suffix2'	=> '',
			},
		'onian'		=>
			{
				'order'		=> 1530,
				'rule'		=> '54',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> 'on',
				'suffix2'	=> '',
			},
		'an'		=>
			{
				'order'		=> 1531,
				'rule'		=> '53',
				'word1'		=> -1,	# Shortest prefix.
				'suffix1'	=> 'a',
				'suffix2'	=> '',
			},
	};

	return bless $self, $class;

}	# End of new.

# -------------------------------------------------------------------

sub stem
{
	my($self, $string) = @_;

	$self -> {'word1'}	= '';
	$self -> {'word2'}	= '';
	$self -> {'suffix'}	= '';
	$self -> {'rule'}	= '';

	if (defined($self -> {'irregular2infinitive'}{$string}) )
	{
		$self -> {'word1'}	= $self -> {'irregular2infinitive'}{$string};
		$self -> {'rule'}	= 'irregular';

		return ($self -> {'word1'}, '', '', $self -> {'rule'});
	}

	my($prefix, $suffix) = ('', '');
	my($i, $j, $word, %prefix);

	# Build up $prefix{$suffix} as an array of prefixes, from longest to shortest.
	for ($i = 1; $i < length($string); $i++)
	{
		$prefix				= substr($string, 0, $i);
		$suffix				= substr($string, $i);
		$prefix{$suffix}	= [];

		for ($j = (length($suffix) - 1); $j >= 0; $j--)
		{
			$word = $prefix . substr($suffix, 0, $j);
			push(@{$prefix{$suffix} }, $word);
		}
	}

#	for $i (sort keys %prefix)
#	{
#		print "\tSuffix: $i. Prefixes: ", join(' | ', sort @{$prefix{$i} }), ". \n";
#	}

	my($lastIndex);

	for $suffix (
		sort
		{ $self -> {'suffix2Rule'}{$a}{'order'} <=> $self -> {'suffix2Rule'}{$b}{'order'} }
		keys(%{$self -> {'suffix2Rule'} }) )
	{
		if (defined($prefix{$suffix}) )
		{
			$self -> {'suffix'}	= $suffix;
			$self -> {'rule'}	= $self -> {'suffix2Rule'}{$suffix}{'rule'};
			$i					= $self -> {'suffix2Rule'}{$suffix}{'word1'};

			if ($i == 0)
			{
				$self -> {'word1'}	= $prefix{$suffix}[0];
				$self -> {'word2'}	= $prefix{$suffix}[1];
			}

			if ($i == -1)
			{
				$i					= $#{$prefix{$suffix} };
				$self -> {'word1'}	= $prefix{$suffix}[$i] .
											$self -> {'suffix2Rule'}{$suffix}{'suffix1'};
				$self -> {'word2'}	= '';
			}

			if ($i == -2)
			{
				$i					= $#{$prefix{$suffix} };
				$self -> {'word1'}	= $prefix{$suffix}[$i] .
											$self -> {'suffix2Rule'}{$suffix}{'suffix1'};
				$self -> {'word2'}	= $prefix{$suffix}[$i];
			}

			if ($i == -3)
			{
				$i					= $#{$prefix{$suffix} };
				$self -> {'word1'}	= $prefix{$suffix}[$i] .
											$self -> {'suffix2Rule'}{$suffix}{'suffix1'};
				$self -> {'word2'}	= $prefix{$suffix}[$i] .
											$self -> {'suffix2Rule'}{$suffix}{'suffix2'};
			}

			if ($i == -4)
			{
				$self -> {'word1'}	= $string;
				$self -> {'word2'}	= ''
			}

			# Rules 12b and 15: Strip off 'ed' or 'ing'.

			if ( ($self -> {'rule'} eq '12b') || ($self -> {'rule'} eq '15') )
			{
				# Do we have a monosyllable of this form:
				# o 0+ Consonants
				# o 1+ Vowel
				# o	2 Non-wx
				# Eg: tipped => tipp?
				# Then return tip and tipp.
				# Eg: swimming => swimm?
				# Then return tipswim and swimm.

				if ($self -> {'word2'} =~ /^([^aeiou]*[aeiou]+)([^wx])\2$/)
				{
					$self -> {'word1'} = "$1$2";
					$self -> {'word2'} = "$1$2$2";
				}
			}

			return ($self -> {'word1'}, $self -> {'word2'}, $suffix, $self -> {'rule'});
		}
	}

	return ('', '', '', '');

}	# End of stem.

#-------------------------------------------------------------------

# Autoload methods go after =cut, and are processed by the autosplit program.

1;

__END__

=head1 NAME

C<Lingua::EN::Infinitive> - Determine the infinitive form of a conjugated word

=head1 SYNOPSIS

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

=head1 DESCRIPTION

Determine the infinitive form of a conjugated word. Also, determine the suffix used to
identify which rule to apply to transform the conjugated word into the infinitive form.

Either 1 or 2 possible infinitives are returned. You must check that the first is really
an English word. If it is, then it is the result. If it is not valid, then check the second.

Failure to deconjugate is indicated by $word1 eq ''.

In general, you can ignore the 3rd and 4th values returned from stem().

The algorithm is based on McIlroy's article (see below), after first checking for irregular
words.

In the hash 'suffix2Rule', you'll see the key 'order'. This specifies the sort order
in which to check McIlroy's rules. I've changed his ordering in a number of places.

=head1 INSTALLATION

You install C<Lingua::EN::Infinitive>, as you would install any perl module library,
by running these commands:

	perl Makefile.PL
	make
	make test
	make install

If you want to install a private copy of C<Lingua::EN::Infinitive> in your home
directory, then you should try to produce the initial Makefile with
something like this command:

	perl Makefile.PL LIB=~/perl
		or
	perl Makefile.PL LIB=C:/Perl/Site/Lib

If, like me, you don't have permission to write man pages into unix system
directories, use:

	make pure_install

instead of make install. This option is secreted in the middle of p 414 of the
second edition of the dromedary book.

=head1 WARNING

Don't make the false assumption that

	"$word1$suffix" eq $word
		or
	"$word2$suffix" eq $word

=head1 REFERENCE

	Title:   Development of a Spelling List
	Author:  M. Douglas McIlroy
	Journal: IEEE Transactions on Communications
	Issue:   Vol COM-30, No 1, January 1982

=head1 AUTHOR

C<Lingua::EN::Infinitive> was written by Ron Savage I<E<lt>ron@savage.net.auE<gt>> in 1998.

=head1 LICENCE

Australian copyright (c) 1999-2002 Ron Savage.

	All Programs of mine are 'OSI Certified Open Source Software';
	you can redistribute them and/or modify them under the terms of
	The Artistic License, a copy of which is available at:
	http://www.opensource.org/licenses/index.html
