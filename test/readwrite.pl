use Array::Unique;
use Time::Piece;
use Data::Dumper qw(Dumper);
use DateTime;
use POSIX;
 
 my $filename2 = "playersgames_team1.txt";

 open (myfile2, '>>playersgames_team2.txt');
 
 
 open (MYFILE, $filename2);

   while (<MYFILE>)
    {

     chomp;
     print myfile2 $_;
     print myfile2 "\n";
	
	}

  close (MYFILE);