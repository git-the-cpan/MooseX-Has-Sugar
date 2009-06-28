package CDeclareRo;

# $Id:$
use strict;
use warnings;
use Moose;
use MooseX::Has::Sugar;
use namespace::autoclean;

sub generated { { isa => 'Str', ro, } }

sub manual { { isa => 'Str', is => 'ro', } }

__PACKAGE__->meta->make_immutable;
1;
