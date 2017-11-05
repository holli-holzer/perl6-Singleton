use v6;

role Singleton[*%attr]
{
  my $instance;

  method instance {
    $instance //= self.WHAT.new( |%attr );
  }
}

=begin pod

=head1 NAME

Instance - Role that provides a singleton instance for a class

=head1 SYNOPSIS

    use Singleton;

    class Bar does Singleton[:type("salad")] {
        has $.type is rw = "";
    }

    say Bar.instance.type; # salad

=head1 DESCRIPTION

Singleton is a role that implements the L<singleton pattern|https://en.wikipedia.org/wiki/Singleton_pattern>.
You can pass it named arguments that will be used to initialize
the singleton instance.

=head1 AUTHOR


 holli.holzer@gmail.com


=head1 COPYRIGHT AND LICENSE

Copyright ©  holli.holzer@gmail.com

License GPLv3: The GNU General Public License, Version 3, 29 June 2007
<https://www.gnu.org/licenses/gpl-3.0.txt>

This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.


=end pod
