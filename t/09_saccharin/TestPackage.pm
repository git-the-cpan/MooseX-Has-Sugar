package TestPackage;
our $VERSION = '0.0404';


# $Id:$
use strict;
use warnings;
use Moose;
use MooseX::Types::Moose (':all');
use MooseX::Has::Sugar::Saccharin;
use namespace::autoclean;

sub Alpha {
  return {
    orig => { 'isa' => Str, 'required' => 1, 'is' => 'rw' },
    mx   => { required rw Str },
  };
}

sub Beta {
  return {
    orig => { 'isa' => Str, 'required' => 1, 'is' => 'rw' },
    mx => { rw Str, required },
  };
}

sub Gamma {
  return {
    orig => {
      'isa'   => Str,
      'is'    => 'rw',
      default => sub {
        return 1;
        }
    },
    mx => { rw Str, default { 1 } },
  };
}

1;
