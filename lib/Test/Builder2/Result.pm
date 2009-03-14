package Test::Builder2::Result;
use Moose;

extends qw{Test::Builder2};

has result => (
   is => 'rw',
   isa => 'Maybe[Bool]',
   #default => undef,
);

has name => (
   is => 'rw',
   isa => 'Str',
   default => '',
);

has expected => (
   is => 'rw',
   isa => 'Defined',
   predicate => 'has_expected',
);

has recieved => (
   is => 'rw',
   isa => 'Defined',
   predicate => 'has_recieved',
);

1;
