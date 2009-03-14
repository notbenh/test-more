package Test::Builder2;
use Moose;
use Test::Builder2::Result;

has output => (
   is => 'rw',
   isa => 'Test::Builder2::Output',
   default => sub{
      use Test::Builder2::Output::Tap;
      Test::Builder2::Output::Tap->new;
   },
);

has _i => (
   is => 'rw',
   isa => 'Test::Builder2::Ticker',
   default => sub{
      use Test::Builder2::Ticker;
      Test::Builder2::Ticker->new;
   },
);

sub ok {
   my ($self, $test) = @_;
   my $res = Test::Builder2::Result->new(output => $self->output, i => $self->_i->next );
   $res->result( ($test) ? 1 : 0 );
   return $res;
}

sub diag {
   my ($result, $msg) = @_;
   $result->reason($msg);
   return $result;
};

sub diag_append {
   my ($result, $msg) = @_;
   $result->reason( $result->reason .' '. $msg);
   return $result;
};

sub is {
   my ($self, $one, $two) = @_ ; 
   return $self->ok($one == $two);
}
   
1;   
