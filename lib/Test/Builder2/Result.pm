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

has reason => (
   is => 'rw',
   isa => 'Str',
   default => '',
);

has _expected => (
   is => 'rw',
   isa => 'Defined',
   predicate => 'has_expected',
);
sub expected {
   my ($self,$expected) = @_;
   $self->_expected($expected);
   return $self;
}

has _recieved => (
   is => 'rw',
   isa => 'Defined',
   predicate => 'has_recieved',
);

sub recieved {
   my ($self, $recieved) = @_;
   $self->recieved($recieved);
   return $self;
}

sub and {
   my ($self) = @_;
   return $self
      if $self->result;
   $self->done(1);
   return undef;
}


sub DEMOLISH {
   my $self = shift;
   $self->output->display($self);
}


1;
