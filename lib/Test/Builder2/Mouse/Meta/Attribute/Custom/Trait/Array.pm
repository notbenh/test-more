package Test::Builder2::Mouse::Meta::Attribute::Custom::Trait::Array;

use strict;

sub register_implementation { 'Test::Builder2::MouseX::NativeTraits::ArrayRef' }

1;
__END__

=head1 NAME

Test::Builder2::Mouse::Meta::Attribute::Custom::Trait::Array - Shortcut for ArrayRef trait

=head1 DESCRIPTION

This module is an alias to Test::Builder2::MouseX::NativeTraits::ArrayRef, which allows
you to refer the trait as C<Array>.

=head1 SEE ALSO

L<MouseX::NativeTraits::ArrayRef>

L<MouseX::NativeTraits>

=cut
