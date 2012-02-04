
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Config" => 0,
    "File::Find" => 0,
    "File::Temp" => 0,
    "Module::Build" => "0.3601",
    "POSIX" => 0,
    "Test::More" => 0,
    "Thread::Queue" => 0,
    "Thread::Semaphore" => 0,
    "Thread::SigMask" => 0
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "more POSIX correct threads",
  "dist_author" => [
    "Leon Timmermans <leont\@cpan.org>"
  ],
  "dist_name" => "threads-posix",
  "dist_version" => "0.001",
  "license" => "perl",
  "module_name" => "threads::posix",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "XSLoader" => 0,
    "parent" => 0,
    "perl" => "5.006",
    "strict" => 0,
    "threads" => 0,
    "warnings" => 0
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
