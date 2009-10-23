
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Dist-Zilla-Plugin-MetaRecommends',
  NAME      => 'Dist::Zilla::Plugin::MetaRecommends',
  AUTHOR    => 'Alex\ White\ \<VVu\@geekfarm\.org\>',
  ABSTRACT  => 'provide\ \"recommends\"\ section\ for\ distribution\ metadata\ for\ optional\ prereqs',
  VERSION   => '0.02',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "Test::More" => '0',
    "Dist::Zilla::Role::MetaProvider" => '0',
    "Moose" => '0',
  },
  test => {TESTS => 't/*.t'}
);

