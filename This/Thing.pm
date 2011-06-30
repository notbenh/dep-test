package This::Thing;
use Moose;

with qw{This::DB};

sub moo {
   require Data::Dumper;
   warn Data::Dumper::Dumper(shift->d);
}

1;
