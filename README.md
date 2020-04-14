# NAME

Alien::MUSCLE - Discover or easy install of MUSCLE

# SYNOPSIS

    use Alien::MUSCLE;
    @cmd = Alien::MUSCLE->muscle_binary;
    push @cmd, (-in => 'sequences.fa', -out => 'results.afa', @opts);
    system { $cmd[0] } @cmd;

Or using [Bio::Tools::Run::Alignment::Muscle](https://metacpan.org/pod/Bio%3A%3ATools%3A%3ARun%3A%3AAlignment%3A%3AMuscle)

    use Env qw(@PATH);
    use Bio::Tools::Run::Alignment::Muscle;
    unshift @PATH, Alien::MUSCLE->bin_dir;
    $muscle = Bio::Tools::Run::Alignment::Muscle->new(@params);
    $align = $muscle->align('sequences.fa');

# DESCRIPTION

Discover or download and install [MUSCLE](https://www.drive5.com/muscle/).

# METHODS

[Alien::MUSCLE](https://metacpan.org/pod/Alien%3A%3AMUSCLE) inherits all the methods from [Alien::Base](https://metacpan.org/pod/Alien%3A%3ABase) and implements the
following new ones.

## muscle\_binary

    # "/installed/path/to/muscle"
    $binary = Alien::MUSCLE->muscle_binary;

The full path to the installed muscle.

## muscle\_dist\_type

    # "source"
    $type = Alien::MUSCLE->muscle_dist_type;

How the program was installed. This is either _source_, if the source
distribution was downloaded and built, or _binary_ if the pre-built software
was downloaded and installed. The pre-built software is statically compiled.

# INSTALLATION

Installing [Alien::MUSCLE](https://metacpan.org/pod/Alien%3A%3AMUSCLE) is straight forward.

If you have [cpanm](https://metacpan.org/pod/cpanm), you only need one line:

    cpanm Alien::MUSCLE

Otherwise, any other cpan client may be used.

## INFLUENTIAL ENVIRONMENT VARIABLES

Installation may be customised to a limited extent with the following
environment variables:

- ALIEN\_MUSCLE\_FORCE\_BINARY

    Setting this variable to a true value will force the download of a pre-built
    binary distribution of [MUSCLE](https://www.drive5.com/muscle/). These versions
    are statically compiled and will not require a compiler on the local machine.
    However there are a limited number of architectures provided and a source
    install may be better in those situations.

# COPYRIGHT & LICENSE

This library is free software. You can redistribute it and/or modify it under
the same terms as Perl itself.

# AUTHORS

Roy Storey - <kiwiroy@cpan.org>
