#!/usr/bin/env perl

use warnings;
use strict;

BEGIN { unshift @INC, './lib'; }

use Igor::CLI;

# Simply dispatch, wuhu
Igor::CLI::main(@ARGV);

__END__

=head1 NAME

igor - Because nothing makes you feel so as home as a good igor

I<A humble attempt at configuration management>

=head1 SYNOPSIS

igor [general options] <subcommand> [subcommand options]

  General Options:
    --help|-h|-?   Display help
    --config|-c    Configuration file to use
    --verbose|-v   Be Verbose

  Subcommands:
    apply          Apply the specifiec configuration
    diff           Show differences between applied and stored configuration
    gc             Show obsolete files

=head1 OPTIONS

=over 8

=item B<C<--help|-h|-?>>

Print a brief help message and exits.

=item B<C<--config|-c> conffile>

Set the config file to use, instead of F<config.toml> in the current directory

=item B<C<--verbose|-v>>

Be a bit more verbose when conduction business

=back

=head1 SUBCOMMANDS

=head2 apply

Apply a configuration to this computer.
The default is to use the configuration specified by this computers hostname.

=over 8

=item B<C<--dry-run>>

Only list what would be done, but do not actually perform the operations.

=item B<C<--task> T>

Apply configuration C<T> instead of the default one

=back

=head2 diff

Show changes between stored and effective configuration

=head3 gc

Show obsolete files

=cut
