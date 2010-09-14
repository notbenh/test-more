package Test::Builder2::MouseX::NativeTraits::MethodProvider::CodeRef;
use Test::Builder2::Mouse;

extends qw(Test::Builder2::MouseX::NativeTraits::MethodProvider);

sub generate_execute {
    my($self)  = @_;
    my $reader = $self->reader;

    return sub {
        my ($instance, @args) = @_;
        $reader->($instance)->(@args);
    };
}

sub generate_execute_method {
    my($self)  = @_;
    my $reader = $self->reader;

    return sub {
        my ($instance, @args) = @_;
        $reader->($instance)->($instance, @args);
    };
}

no Test::Builder2::Mouse;
__PACKAGE__->meta->make_immutable();

__END__

=head1 NAME

Test::Builder2::MouseX::NativeTraits::MethodProvider::CodeRef - Provides methods for CodeRef

=head1 DESCRIPTION

This class provides method generators for the C<Code> trait.
See L<Test::Builder2::Mouse::Meta::Attribute::Custom::Trait::Code> for details.

=head1 METHOD GENERATORS

=over 4

=item generate_execute

=item generate_execute_method

=back

=head1 SEE ALSO

L<Test::Builder2::MouseX::NativeTraits>

=cut
