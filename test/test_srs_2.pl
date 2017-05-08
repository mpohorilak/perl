  use Sport::Analytics::SimpleRanking;
    my $stats = Sport::Analytics::SimpleRanking->new();
    my $games = [
        "Boston,13,Atlanta,27",
        "Dallas,17,Chicago,21",
        "Eugene,30,Fairbanks,41",
        "Atlanta,15,Chicago,3",
        "Eugene,21,Boston,24",
        "Fairbanks,17,Dallas,7",
        "Dallas,19,Atlanta,7",
        "Boston,9,Fairbanks,31",
        "Chicago,10,Eugene,30",
    ];
    $stats->load_data( $games );
    my  $srs = $stats->simpleranking( verbose => 1 );
    my $mov = $stats->mov;
    my $sos = $stats->sos;
	
	#my $total_wins = $stats->total_wins();
	#my $total_games = $stats->total_games();
	#my $total_teams = $stats->total_teams();
	#my $home_wins = $stats->home_wins();
	#my $average_score = $stats->avg_score();
	
	
	#my $teams = $stats->team_stats();
	#my $predicted = $stats->pythag();
	 #my $total_wins = $stats->total_wins();
	

	#for (keys %$teams) {
    # printf "%s:  %6.2f %6.2f\n", $_, $team{$_}{win_pct}, $predicted{$_};
	#}
	
	
	for ( keys %$srs ) {
        print "Team $_ has a srs of ", $srs->{$_};
        print " and a mov of ",$mov->{$_};
		print " and a sos of ",$sos->{$_},"\n";
    }
	
 
# my $teams = $stats->team_stats();
# for (sort keys %$teams) {
 #    printf "%s:  %3d-%3d-%3d\n", $_, $team{$_}{wins}, $team{$_}{losses}, $team{$_}{ties};
 #}
#	print $average_score;
#	print "\n";
#	print $_;
#	print "\n";
#	print "predicted:",$predicted{$_};
#	print "\n";
#	print $total_teams;
#	print "\n";
#	print $total_wins;
#	print "\n";
	