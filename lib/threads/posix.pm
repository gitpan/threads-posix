package threads::posix;
{
  $threads::posix::VERSION = '0.001';
}
use strict;
use warnings;

use XSLoader;

XSLoader::load(__PACKAGE__, __PACKAGE__->VERSION);

use parent 'threads';

1;

#ABSTRACT: more POSIX correct threads



=pod

=head1 NAME

threads::posix - more POSIX correct threads

=head1 VERSION

version 0.001

=head1 SYNOPSIS

 my $thread = thread::posix->create(sub { ... });
 $thread->kill(SIGALRM);

=head1 DESCRIPTION

This module extends L<threads> to provide behaviors that are more conformant to what POSIX prescribes. You should realize that this doesn't in any way change the threads themselves, just how you intereract with them. Everything not described here should work exactly the same as in threads.pm.

=head1 METHODS

=head2 kill

Send a signal to a thread. Unlike what threads.pm does, this is a real OS level signal that will interact with various syscalls the way you expect them to, not a poke into the deferred signal handling system.

=begin Pod::Coverage

=item cancel

This method schedules a thread for cancelation. Currently L<threads> is known not to be cancel-safe, so this will leak an entire interpreter. Please use signals instead of this.


=end Pod::Coverage

=head1 AUTHOR

Leon Timmermans <leont@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Leon Timmermans.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

