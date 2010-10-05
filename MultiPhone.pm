# ============================================================================
package Text::Phonetic::MultiPhone;
# ============================================================================
use utf8;

use Moose;
extends qw(Text::Phonetic);

__PACKAGE__->meta->make_immutable;

our $VERSION = "1.0";

sub _predicates {
	return 'Text::MultiPhone::de';
}

sub _do_encode {
	my ($self,$string) = @_;

	my $dePhone = new Text::MultiPhone::de();
	my ($multiphone) = $dePhone->multiphone($string);
	return $multiphone;
}

1;

=encoding utf8

=pod

=head1 NAME

Text::Phonetic::MultiPhone - MultiPhone algorithm

=head1 SYNOPSIS

      use Text::Phonetic::MultiPhone;
  
      my $phonetic = Text::Phonetic::MultiPhone->new();
      $encoded_string = $phonetic->encode($string);

=head1 DESCRIPTION

The MultiPhone search algorithm is a phonetic algorithm.

=head1 AUTHOR

    Stefan Gipper <stefanos@cpan.org>, http://www.coder-world.de/

=head1 COPYRIGHT

Text::Phonetic::MultiPhone is Copyright (c) 2010 Stefan Gipper
All rights reserved.

This program is free software; you can redistribute
it and/or modify it under the same terms as Perl itself.

=head1 SEE ALSO



=cut
