############################################################################
#ADD TOTALS AND SPREADS  
############################################################################
my $filename4 = "totals2016.txt";
 $i=0;
#read in file and get list of unique player names, add positions
open (MYFILE, $filename4 ); 
while (<MYFILE>) 

{ 

	chomp; 

	@fields_c = split /\|/, $_;

	$j=0;
 
	$date_covers=$fields_c[0];
	$awayteam_covers=$fields_c[1];
	$awayteamspread_covers=$fields_c[2];
	$hometeam_covers=$fields_c[3];
	$hometeamspread_covers=$fields_c[4];
	$total_covers=$fields_c[5];

	$c[$i][$j]=$date_covers;      
	$j++;
  
	$c[$i][$j]=$awayteam_covers; 
	$j++;

	$c[$i][$j]=$awayteamspread_covers;
    $j++;	    

	$c[$i][$j]=$hometeam_covers;
	$j++;
  
	$c[$i][$j]=$hometeamspread_covers;
	$j++;

	$c[$i][$j]=$total_covers; 
    $i++;

} 
close (MYFILE);

$length_c=scalar @c;


 for ($z=0; $z<$length_c; $z++)
 {
	  	   
       print myfile6 $c[$z][0];
       print myfile6 " ";	   
	   
	   print myfile6 $c[$z][1];
	   print myfile6 " ";
	   
	   print myfile6 $c[$z][2];
	   print myfile6 " ";
	   
	   print myfile6 $c[$z][3];
	   print myfile6 " ";
	   
	   print myfile6 $c[$z][4];
	   print myfile6 " ";
	   
	   print myfile6 $c[$z][5];
	   print myfile6 " ";	
	   
	   print myfile6 $c[$z][6];
	   print myfile6 " ";	
	

	 print myfile6 "\n";
		
	}  
	
	
	
	
	
	
	
	
	
	
	#ADD GAME TOTAL AND SPREAD 
	for ($z=0; $z<$length_c; $z++)
      {
		
		
       if ($c[$z][0] =~ $date && $c[$z][3] =~ $home && $c[$z][1] =~ $away )
		 {
			$teamtotal[$Starters] = $c[$z][5];  
		   $hometeamspread[$Starters] = $c[$z][4]; 
		   $awayteamspread[$Starters] = $c[$z][2];

		}
	 }
	


	
	#ADD GAME TOTAL AND SPREAD 
	  for ($z=0; $z<$length_c; $z++)
      {
	  	
	   
         if ($c[$z][0] =~ $date && $c[$z][3] =~ $home && $c[$z][1] =~ $away )
		   {
		
		   $teamtotal[$Starters] = $c[$z][5];  
		   $hometeamspread[$Starters] = $c[$z][4]; 
		   $awayteamspread[$Starters] = $c[$z][2];
	  }
	 }



#ADD GAME TOTAL AND SPREAD 
	 for ($i=0; $i<$length_c; $i++)
     {
		 
     if ($c[$i][0] =~ $date && $c[$i][3] =~ $home && $c[$i][1] =~ $away )
		  {
		  $teamtotalR[$Reserves] = $c[$i][5];  
		  $hometeamspreadR[$Reserves] = $c[$i][4]; 
		  $awayteamspreadR[$Reserves] = $c[$i][2];
		 }
	 }



		#ADD GAME TOTAL AND SPREAD 
		for ($i=0; $i<$length_c; $i++)
		{
		
		if ($c[$i][0] =~ $date && $c[$i][3] =~ $home && $c[$i][1] =~ $away )
		 {
			 
		 $teamtotalR[$Reserves] = $c[$i][5];  
		 $hometeamspreadR[$Reserves] = $c[$i][4]; 
		 $awayteamspreadR[$Reserves] = $c[$i][2];

		 
		 }
		}	 