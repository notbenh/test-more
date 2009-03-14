package Test::Builder2::Ticker;
use Moose;

#this is kinda dumb and should be done in a much smarter manner.
has i => (
   is => 'rw',
   isa => 'Int',
   default => 0,
);

has step => (
   is => 'rw',
   isa => 'Int',
   default => 1,
);

sub next {
   my ($self) = @_; 
   return $self->i( $self->i + $self->step );
}

1;
