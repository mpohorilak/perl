    use Sport::Analytics::SimpleRanking;
    my $stats = Sport::Analytics::SimpleRanking->new();
    my $games = [
     "CLE,95,CHI,97",
"DET,106,ATL,94",
"NOP,95,GSW,111",
"IND,99,TOR,106",
"CHI,115,BRK,100",
"PHI,95,BOS,112",
"NYK,122,MIL,97",
"UTA,87,DET,92",
"CHO,94,MIA,104",
"WAS,88,ORL,87",
"NOP,94,POR,112",
"SAS,106,OKC,112",
"DAL,111,PHO,95",
"LAC,111,SAC,104",
"MIN,112,LAL,111",
"CLE,106,MEM,76",
"DEN,105,HOU,85",
"ATL,112,NYK,101",
"MEM,112,IND,103",
"DAL,88,LAC,104",
"TOR,113,BOS,103",
"UTA,99,PHI,71",
"MIA,92,CLE,102",
"WAS,118,MIL,113",
"CHI,94,DET,98",
"CHO,94,ATL,97",
"OKC,139,ORL,136",
"MIN,95,DEN,78",
"POR,92,PHO,110",
"LAL,114,SAC,132",
"GSW,112,HOU,92",
"BRK,75,SAS,102",
"UTA,97,IND,76",
"NYK,117,WAS,110",
"PHO,101,POR,90",
"SAC,109,LAC,114",
"BRK,91,MEM,101",
"GSW,134,NOP,120",
"MIL,87,TOR,106",
"SAS,95,BOS,87",
"ORL,87,CHI,92",
"HOU,89,MIA,109",
"ATL,94,CHO,92",
"DEN,93,OKC,117",
"DAL,103,LAL,93",


    ];

	
    $stats->load_data( $games );
    my  $srs = $stats->simpleranking( verbose => 1 );
    my $mov = $stats->mov;
    my $sos = $stats->sos;
    for ( keys %$srs ) {
        print "Team $_ has a srs of ", $srs->{$_};
        print " and a mov of ",$mov->{$_},"\n";
    }