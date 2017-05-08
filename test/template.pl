

use Array::Unique;
use Time::Piece;
use Data::Dumper qw(Dumper);
use DateTime;
use POSIX;
 


my @abbr = qw (01 02 03 04 05 06 07 08 09 10 11 12);
my($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
$year+=1900;

$filename='playerstotals_2016_1029.txt';


print $filename;
print "\n";

 
open (myfile1, '>>playersgames_team1.txt');

 


#add count 



#############################################################################################################################
###ADD UP TEAM STATS + POSITION + LEAGUE STATS + NEED TO ADJUST START COLUMN - 39 
############################################################################################################################
use constant
{
KEY => 0, 
TIME => 1,
DATE => 2,
MONTH => 3, 
 
};
 

 
$linecount=0; 
 
open (MYFILE, $filename);

while (<MYFILE>)
{


chomp;

  print myfile1 $_;
  print myfile1 "| ";
          
  $linecount=$linecount+1;

  my @fields = split /\|/ , $_; 
  
  
  if($linecount==1)
  {
 #print header 	 
  }

 #if not header print out data  
 if($linecount>1)
  {
 
 
  
  
  }
  
  
  
  

 }

close (MYFILE);

close myfile1;
  