package Crypt::Wilkins;

use 5.008002;
use strict;
use warnings;

our $VERSION = '0.01';

sub new {
    my $class = shift;
	my %attribs = @_;
	my $self = \%attribs;
    my $letterval = 1;
    my %let = map { $_ => $letterval++ } for (a..z);
    $let{.} = $letterval++;
    $let{!} = $letterval++;
    $let{?} = $letterval++;
    $let{,} = $letterval++;
    $let{:} = $letterval++;

    $self->{let} = \%let;

    return bless $self, $class;
}

sub embed {
    my $self = shift;
    my $substrate = shift;
    my $plaintext = shift;
    my $key = shift;

}

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

Crypt::Wilkins - 

=head1 SYNOPSIS

  use Crypt::Wilkins;
  blah blah blah

=head1 DESCRIPTION

Blah blah blah.


=head1 SEE ALSO

Mention other useful documentation such as the documentation of
related modules or operating system documentation (such as man pages
in UNIX), or any relevant external documentation such as RFCs or
standards.

=head1 AUTHOR

Ira Joseph Woodhead, E<lt>ira at sweetpota dot toE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2004 by Ira Woodhead

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.2 or,
at your option, any later version of Perl 5 you may have available.


=cut
