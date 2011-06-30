package This::DB;
use Moose::Role;

has db_file =>
   is => 'ro',
   isa => 'Str',
   default => 'db.sqlite'
;
   
has d => 
   is => 'ro',
   isa => 'Object',
   lazy => 1,
   default => sub{
      require DBI;
      my $dbfile = shift->db_file;
      DBI->connect("dbi:SQLite:dbname=$dbfile","","");
   }
;

1;
