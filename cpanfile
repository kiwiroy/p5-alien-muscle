# -*- mode: perl; -*-
requires 'Alien::Build';
requires 'URI';
requires 'Mojo::DOM58';
requires 'Sort::Versions';

on develop => sub {
   requires 'App::af';

   # BioPerl-Run main module
   requires 'Bio::DB::ESoap';
};
