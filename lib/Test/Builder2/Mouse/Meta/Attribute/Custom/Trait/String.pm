package Test::Builder2::Mouse::Meta::Attribute::Custom::Trait::String;

use strict;

sub register_implementation { 'Test::Builder2::MouseX::NativeTraits::Str' }

1;
__END__

=head1 NAME

Test::Builder2::Mouse::Meta::Attribute::Custom::Trait::String - Shortcut for Str trait

=head1 DESCRIPTION

This module is an alias to Test::Builder2::MouseX::NativeTraits::Str, which allows
you to refer the trait as C<String>.

=head1 SEE ALSO

L<MouseX::NativeTraits::Str>

L<MouseX::NativeTraits>

=cut
