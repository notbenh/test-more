#!/usr/bin/perl
use strict;
use warnings;
use lib '../../lib'; 

BEGIN { print "\n" for 1..10};

use Test::Builder2;

my $tb = Test::Builder2->new;

$tb->ok(1+1)->diag('hello');
$tb->is(1,2)->diag('not ==');



