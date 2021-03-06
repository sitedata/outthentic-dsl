use Outthentic::DSL;

my $otx = Outthentic::DSL->new(<<'HERE');
  I am ok, really
  HELLO Outthentic !!!
HERE

$otx->validate(<<'CHECK');
  I am ok
  HELLO Outthentic
CHECK


print "status\tcheck\n";
print "==========================\n";

for my $r (@{$otx->results}) {
    print $r->{status} ? 'true' : 'false', "\t", $r->{message}, "\n";
}

