package Test::Builder2;
use Moose;
use Test::Builder2::Result;

sub ok {
   my ($self, $test) = @_;
   my $res = Test::Builder2::Result->new;
   $res->result( ($test) ? 1 : 0 );
   return $res;
}

sub diag {
   my ($result, $msg) = @_;
   warn $msg
      unless $result->result;
   return $result;
};

sub is {
   my ($self, $one, $two) = @_ ; 
   return $self->ok($one == $two);
}
   
1;   
