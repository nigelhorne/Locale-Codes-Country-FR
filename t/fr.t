#!perl -wT

use strict;
use warnings;
use Test::Most tests => 4;
use Test::NoWarnings;

BEGIN {
	use_ok('Locale::Codes::Country::FR');
}

FR: {
	ok(Locale::Codes::Country::FR::country2fr('England') eq 'Angleterre');
	ok(Locale::Codes::Country::FR::en_country2gender('England') eq 'F');
}
