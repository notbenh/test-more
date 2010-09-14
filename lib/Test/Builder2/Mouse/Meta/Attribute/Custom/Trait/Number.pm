package Test::Builder2::Mouse::Meta::Attribute::Custom::Trait::Number;

use strict;

sub register_implementation { 'Test::Builder2::MouseX::NativeTraits::Num' }

1;
__END__

=head1 NAME

Test::Builder2::Mouse::Meta::Attribute::Custom::Trait::Number - Shortcut for Number trait

=head1 DESCRIPTION

This module is an alias to Test::Builder2::MouseX::NativeTraits::Number, which allows
you to refer the trait as C<Number>.

=head1 SEE ALSO

L<MouseX::NativeTraits::Number>

L<MouseX::NativeTraits>

=cut
