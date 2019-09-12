package Locale::Codes::Country::FR;

use warnings;
use strict;

use Data::Section::Simple;
use Locale::Codes::Country;

our @ISA = ('Locale::Codes::Country');

=head1 NAME

Locale::Codes::Country::FR - French countries

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

=cut

sub en_country2gender {
	my $country = shift;

	$country = country2fr($country);

	# FIXME:  Exceptions e.g. Mexico
	if($country =~ /e$/) {
		return 'F';
	}
	return 'M';
}

sub country2fr {
	my $english = shift;

	my $data = Data::Section::Simple::get_data_section('countries');

	my @line = split /\n/, $data;

	for (@line) {
		my($en, $fr) = split /:/;
		if($en eq $english) {
			return $fr;
		}
	}
}

1;
__DATA__
@@ countries
England:Angleterre
