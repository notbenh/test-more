package Test::Builder2::Output::Tap;
use Moose;
extends qw{Test::Builder2::Output};

sub display {
   use Data::Dumper;
   my ($disp, $res) = @_;
   printf qq{%d %sok%s\n},
          $res->i, 
          ($res->result) ? '' : 'not ',
          (length $res->name) ? ' - ' . $res->name : ''
   ;
   
}

1;
