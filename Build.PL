use strict;
use warnings;
use Module::Build;
use Config;

if (not $Config{useithreads}) {
	print STDERR "Can't use threads::posix without threading support\n";
	exit 0;
}
if (eval { require Perl::OSType } && !Perl::OSType::is_os_type('Unix')) {
	print STDERR "Can't use threads::posix on non-unix\n";
	exit 0;
}

my $builder = Module::Build->new(
  module_name         => 'threads::posix',
  'build_requires' => {
    'Config' => '0',
    'File::Find' => '0',
    'File::Temp' => '0',
    'Module::Build' => '0.3601',
    'POSIX' => '0',
    'Test::More' => '0',
    'Thread::Queue' => '0',
    'Thread::Semaphore' => '0',
    'Thread::SigMask' => '0',
    'Time::HiRes' => '0'
  },
  'configure_requires' => {
    'Module::Build' => '0.3601',
    'Perl::OSType' => '1'
  },
  'requires' => {
    'XSLoader' => '0',
    'parent' => '0',
    'perl' => '5.006',
    'strict' => '0',
    'threads' => '0',
    'warnings' => '0'
  },
);

$builder->create_build_script();
