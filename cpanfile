# -*- mode: perl; -*-
requires 'Alien::Build';
requires 'URI';
requires 'Mojo::DOM58';
requires 'Sort::Versions';

test_requires 'Test2::Suite';

on develop => sub {
   requires 'App::af';

   # BioPerl-Run main module
   requires 'Bio::DB::ESoap';
};
