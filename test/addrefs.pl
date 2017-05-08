
 ##############################################################################
 # add referees 
 ##############################################################################
 my $filename4 = "refs_2016_1017.txt";
 $i=0;
#read in file and get list of unique player names, add positions
open (MYFILE, $filename4 ); 
while (<MYFILE>) 

{ 

	chomp; 

	@fields_c = split /\|/, $_;

	#April 16, 2016|BOS|ATL| James Capers|Derrick Collins|Rodney Mott
	
	
	$j=0;
 
	$date=$fields_c[0];
	$awayteam=$fields_c[1];
	$hometeam=$fields_c[2];
	$ref1=$fields_c[3];
	$ref1 =~ s/^\s+//;
		
	$ref2=$fields_c[4];
	$ref3=$fields_c[5];

	$c[$i][$j]=$date;      
	$j++;
  
	$c[$i][$j]=$awayteam; 
	$j++;

	$c[$i][$j]=$hometeam;
    $j++;	    

	$c[$i][$j]=$ref1;
	$j++;
  
	$c[$i][$j]=$ref2;
	$j++;

	$c[$i][$j]=$ref3; 
    $i++;

} 
close (MYFILE);

$length_c=scalar @c;

#refs check 
 # for ($z=0; $z<$length_c; $z++)
 # {
	  	   
       # print myfile2 $c[$z][0];
       # print myfile2 " ";	   
	   
	   # print myfile2 $c[$z][1];
	   # print myfile2 " ";
	   
	   # print myfile2 $c[$z][2];
	   # print myfile2 " ";
	   
	   # print myfile2 $c[$z][3];
	   # print myfile2 " ";
	   
	   # print myfile2 $c[$z][4];
	   # print myfile2 " ";
	   
	   # print myfile2 $c[$z][5];
	   # print myfile2 " ";	
	   
	 # print myfile2 "\n";
		
	# }  
	
	
	
#add referees 	
for ($z=0; $z<$length_c; $z++)
      {
		
		
       if ($c[$z][0] =~ $fields2[1]& $c[$z][2] =~ $fields2[3] && $c[$z][1] =~ $fields2[2])
		 {
		   $r1 = $c[$z][3];  
		   $r2 = $c[$z][4]; 
		   $r3 = $c[$z][5];

		}
	 }
	 
	 print myfile $r1;
	 print myfile "|";
	 print myfile $r2;
	 print myfile "|";
	 print myfile $r3;
	 print myfile "\n";	