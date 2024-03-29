#!/bin/env perl

use 5.006;
use strict;
use warnings;
use Module::Build;
Module::Build->VERSION( '0.4004' );

my $builder = Module::Build->new(
    module_name        => 'TimTools',
    license            => 'artistic_2',
    dist_author        => q{Tim Potapov <tim.potapov[AT]gmail.com>},
    dist_version_from  => 'lib/TimTools.pm',
    release_status     => 'stable',
    configure_requires => {
        'Module::Build' => '0.4004',
    },
    test_requires => {
        'Test::More' => '0',
    },
    requires => {
         'Mojolicious' => '9.27',
    },
    add_to_cleanup => ['TimTools-*'],
    meta_merge     => {
        resources => {
            bugtracker => 'https://github.com/poti1/timtools/issues',
            repository => 'https://github.com/poti1/timtools',
        },
    },
);

$builder->create_build_script();
