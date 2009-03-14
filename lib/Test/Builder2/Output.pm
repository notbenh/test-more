package Test::Builder2::Output;
use Moose;

sub display {
   my $self = shift;
   warn @_;
}

1;
