#!/usr/bin/perl -w

use strict;
use warnings;

use Test::More 'no_plan';

use Test::Builder2::Result;

require_ok 'Test::Builder2::HistoryStack';
can_ok( 'Test::Builder2::HistoryStack', 
        qw{ singleton
            create
            
            results
            has_results
            add_test_history
            add_result
            add_results
            result_count

          },
);
      
# helpers
sub new_history { Test::Builder2::HistoryStack->create }
sub Pass { Test::Builder2::Result->new_result( pass => 1 ) }
sub Fail { Test::Builder2::Result->new_result( pass => 0 ) }


{ 
    ok my $history = new_history, q{new history} ;
    ok!$history->has_results, q{no results yet};
    is_deeply [$history->results], [], q{blank results set};
    ok $history->add_result( Pass() ), q{add pass};
    ok $history->add_test_history( Fail() ), q{add fail};
    ok $history->add_results( Pass(), Fail() ), q{can add multiples};
    ok $history->has_results, q{we have results};
    
    is $history->result_count, 4, q{count looks good};
    is $history->test_count, 4, q{test_count};

    is $history->pass_count, 2, q{pass_count};
    is $history->fail_count, 2, q{fail_count};
    is $history->todo_count, 0, q{todo_count};
    is $history->skip_count, 0, q{skip_count};

}

