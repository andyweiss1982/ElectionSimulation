module ElectionMechanics

def run_primaries
		Display.clearscreen
		Display.line
		puts "     SOMEWHERE IN A SMOKY BACK ROOM..."
		Display.line
		sleep 2
		puts "THE PARTIES ARE CHOOSING THEIR CANDIDATES."
		Display.line
		sleep 2
		Display.blank
		puts "DEMOCRATIC CANDIDATES:".center(42)
		Display.blank
		Display.line
		Display.blank
		@democrats.each {|candidate| puts candidate.name.center(42)}
		Display.blank
		Display.line
		sleep 2
		Display.blank
		puts "REPUBLICAN CANDIDATES:".center(42)
		Display.blank
		Display.line
		Display.blank
		@republicans.each {|candidate| puts candidate.name.center(42)}
		Display.blank
		Display.line
		sleep 2
		puts "         PRESS ENTER TO CONTINUE"
		gets.chomp
		Display.clearscreen
		@democraticnominee = @democrats.sample.name
		@republicannominee = @republicans.sample.name
		Display.flag
		Display.long_line
		sleep 2
		Display.blank
		puts "THE WINNER OF THE DEMOCRATIC PRIMARY IS #{@democraticnominee}.".center(50)
		Display.blank
		Display.long_line
		sleep 2
		Display.blank
		puts "THE WINNER OF THE REPUBLICAN PRIMARY IS #{@republicannominee}.".center(50)
		Display.blank
		Display.long_line
		sleep 2
		Display.blank
		puts "NOW, ON TO THE GENERAL ELECTION...".center(50)
		Display.blank
		Display.long_line
		sleep 2
		Display.blank
		puts "PRESS ENTER TO CONTINUE".center(50)
		gets.chomp
		democratic_stumpspeech
	end

	def democratic_stumpspeech
		Display.clearscreen
		puts "FIRST, THE DEMOCRATIC NOMINEE WILL MAKE A STUMP SPEECH.".center(60)
		sleep 2
		Display.demspeech
		Display.blank
		puts "I, #{@democraticnominee},".center(60) 
		sleep 2
		puts "PROMISE MORE INVESTMENT IN INFRASTRUCTURE AND EDUCATION,".center(60)
		sleep 2
		puts "A MORE MODEST FOREIGN POLICY, AND A MORE JUST SOCIAL ORDER.".center(60)
		sleep 2
		puts "IF YOU VOTE FOR ME, YOU WON'T REGRET IT.".center(60)
		Display.blank
		sleep 2
		puts "PRESS ENTER TO CONTINUE.".center(60)
		gets.chomp
		poll_the_people1
	end

	def poll_the_people1
		Display.clearscreen
		Display.longest_line
		Display.blank
		puts "THE CANDIDATES' CONSULTANTS ASSEMBLE A FOCUS GROUP...".center(60)
		Display.blank
		Display.longest_line
		@voters.each {|voter|
		if (voter.politicalnum >= rand(100)) 
			Display.blank
			puts "#{voter.name} SAYS...".center(60) 
			sleep 1 
			Display.blank 
			puts "'WHAT FINE ORATORY!  WHAT PASSION!'".center(60)  
			puts "'EXACTLY WHAT OUR COUNTRY NEEDS IN THESE TROUBLED TIMES...'".center(60)
			Display.blank
			Display.longest_line
			sleep 2
		elsif (voter.politicalnum < rand(100))
			Display.blank
			puts "#{voter.name} SAYS...".center(60) 
			sleep 1 
			Display.blank
			puts "'WHAT A LOAD OF CRAP.'".center(60) 
			Display.blank
			Display.longest_line
			sleep 2
		end}
		@politicians.each {|politician|
		if politician.name.to_s == "#{@democraticnominee}"
			Display.blank
			puts "#{politician.name} SAYS...".center(60)
			sleep 1
			Display.blank
			puts "OBVIOUSLY I'M GOING TO VOTE FOR MYSELF!".center(60)
			Display.blank
			Display.longest_line
			sleep 3
		elsif politician.politicalnum == 100
			Display.blank
			puts "#{politician.name} SAYS...".center(60)
			sleep 1
			Display.blank
			puts "I'M A #{politician.party} STALWART.".center(60)
			puts "EVEN THOUGH I LOST THE PRIMARY, I STILL SUPPORT #{@democraticnominee}".center(60)
			Display.blank
			Display.longest_line
			sleep 3
		elsif politician.name.to_s == "#{@republicannominee}"
			Display.blank
			puts "#{politician.name} SAYS...".center(60)
			sleep 1
			Display.blank
			puts "WHAT AN IDIOT!".center(60)
			puts "#{@democraticnominee} IS A VACUOUS, MENDACIOUS FOOL!".center(60)
			Display.blank
			Display.longest_line
			sleep 2
		elsif politician.politicalnum == 0
			Display.blank
			puts "#{politician.name} SAYS...".center(60)
			sleep 1
			Display.blank
			puts "I'M A LOYAL #{politician.party}.".center(60)
			puts "I'M ALWAYS GOING TO SUPPORT THE #{politician.party}.".center(60)
			Display.blank
			Display.longest_line
			sleep 2
		end}
		Display.blank
		puts "PRESS ENTER TO CONTINUE.".center(60)
		gets.chomp
		republican_stumpspeech
	end

	def republican_stumpspeech
		Display.clearscreen
		puts "NOW, THE REPUBLICAN NOMINEE WILL MAKE A STUMP SPEECH.".center(60)
		sleep 2
		Display.repspeech 
		Display.blank
		puts "I, #{@republicannominee},".center(60)
		sleep 2
		puts "PROMISE MORE INVESTMENT IN NATIONAL SECURITY, LOWER TAXES,".center(60)
		sleep 2
		puts "AND A GOVERNMENT THAT RESPECTS TRADITIONAL VALUES.".center(60)
		sleep 2
		puts "IF YOU VOTE FOR ME, YOU WON'T REGRET IT.".center(60)
		Display.blank
		sleep 2
		puts "PRESS ENTER TO CONTINUE.".center(60)
		gets.chomp
		poll_the_people2
	end

	def poll_the_people2
		Display.clearscreen
		Display.longest_line
		Display.blank
		puts "THE CANDIDATES' CONSULTANTS ASSEMBLE A SECOND FOCUS GROUP...".center(60)
		Display.blank
		Display.longest_line
		@voters.each {|voter|
		if (voter.politicalnum >= rand(100)) 
			Display.blank
			puts "#{voter.name} SAYS...".center(60) 
			sleep 1 
			Display.blank 
			puts "'WHAT A LOAD OF CRAP.'".center(60)
			Display.blank
			Display.longest_line
			sleep 2
		elsif (voter.politicalnum < rand(100))
			Display.blank
			puts "#{voter.name} SAYS...".center(60) 
			sleep 1 
			Display.blank
			puts "'WHAT FINE ORATORY!  WHAT PASSION!'".center(60)  
			puts "'EXACTLY WHAT OUR COUNTRY NEEDS IN THESE TROUBLED TIMES...'".center(60)
			Display.blank
			Display.longest_line
			sleep 2
		end}
		@politicians.each {|politician|
		if politician.name.to_s == "#{@democraticnominee}"
			Display.blank
			puts "#{politician.name} SAYS...".center(60)
			sleep 1
			Display.blank
			puts "GET YOUR FACTS STRAIGHT, #{@republicannominee}!".center(60)
			puts "I'M GOING TO WIPE THE FLOOR WITH YOU IN THE GENERAL ELECTION.".center(60)
			Display.blank
			Display.longest_line
			sleep 3
		elsif politician.politicalnum == 100
			Display.blank
			puts "#{politician.name} SAYS...".center(60)
			sleep 1
			Display.blank
			puts "I'M A #{politician.party} STALWART.".center(60)
			puts "WHO DO YOU REALLY THINK I'M GOING TO SUPPORT?".center(60)
			Display.blank
			Display.longest_line
			sleep 3
		elsif politician.name.to_s == "#{@republicannominee}"
			Display.blank
			puts "#{politician.name} SAYS...".center(60)
			sleep 1
			Display.blank
			puts "DUH... OBVIOUSLY I AM GOING TO VOTE FOR MYSELF.".center(60)
			Display.blank
			Display.longest_line
			sleep 2
		elsif politician.politicalnum == 0
			Display.blank
			puts "#{politician.name} SAYS...".center(60)
			sleep 1
			Display.blank
			puts "I'M A LOYAL #{politician.party}.".center(60)
			puts "I'M ALWAYS GOING TO SUPPORT THE #{politician.party}.".center(60)
			Display.blank
			Display.longest_line
			sleep 2
		end}
		Display.blank
		puts "PRESS ENTER TO CONTINUE.".center(60)
		gets.chomp
		voting_transition
	end

def voting_transition
	Display.clearscreen
	puts "BUT YOU NEVER KNOW WHAT PEOPLE WILL DO BEHIND THE CURTAIN OF THE VOTING BOOTH..."
	sleep 3
	voting_time
end

	def voting_time
	Display.show_voting

	@demtotal = 0
	@reptotal = 0

		@politicians.each {|politician|

		if (politician.politicalnum >= rand(100))  
			Display.show_voting
			@demtotal += 1
			puts "✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭".center(78)
			puts "     PRESS ENTER     ✭ DEMOCRATIC VOTES: #{@demtotal} ✭     TO CONTINUE     " .center(78)
			puts "✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭".center(78)
			sleep 2
		elsif (politician.politicalnum <= rand(100))
			Display.show_voting
			@reptotal += 1
			puts "✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭".center(78)
			puts "     PRESS ENTER     ✭ REPUBLICAN VOTES: #{@reptotal} ✭     TO CONTINUE     ".center(78)
			puts "✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭".center(78)
			sleep 2
		end}

		@voters.each {|voter|

		if (voter.politicalnum >= rand(100))  
			Display.show_voting
			@demtotal += 1
			puts "✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭".center(78)
			puts "     PRESS ENTER     ✭ DEMOCRATIC VOTES: #{@demtotal} ✭     TO CONTINUE     " .center(78)
			puts "✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭".center(78)
			sleep 2
		elsif (voter.politicalnum <= rand(100))
			Display.show_voting
			@reptotal += 1
			puts "✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭".center(78)
			puts "     PRESS ENTER     ✭ REPUBLICAN VOTES: #{@reptotal} ✭     TO CONTINUE     ".center(78)
			puts "✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭✭".center(78)
			sleep 2
		end}
			sleep 1
			gets.chomp

			if @demtotal > @reptotal
				demswin
			elsif @reptotal > @demtotal
				repswin
			else
				tie
			end
	end

	def demswin
		Display.clearscreen
		Display.demsline
		Display.demswin
		Display.demsline
		Display.blank
		Display.blank
		Display.blank
		Display.line45
		puts "DO YOU BELIEVE THE ELECTION RESULTS?".center(56)
		Display.line45
		puts "BETTER CHECK THE SOURCE CODE...".center(56)
		Display.line45
		puts "PRESS ENTER TO RETURN TO MAIN MENU".center(56)
		gets.chomp
		Simulation.new
	end

	def repswin
		Display.clearscreen
		Display.repsline
		Display.repswin
		Display.repsline
		Display.blank
		Display.blank
		Display.blank
		Display.line45
		puts "DO YOU BELIEVE THE ELECTION RESULTS?".center(56)
		Display.line45
		puts "BETTER CHECK THE SOURCE CODE...".center(56)
		Display.line45
		puts "PRESS ENTER TO RETURN TO MAIN MENU".center(56)
		gets.chomp
		Simulation.new		
	end

	def tie
		Display.clearscreen
		Display.full_line
		puts "THE ELECTORAL COLLEGE IS HOPELESSLY DEADLOCKED.".center(78)
		Display.long_line
		Display.showmap	

		Display.blank
		Display.long_line
		puts "ONLY ONE VOTE (YOURS) CAN SWAY THE ELECTION.".center(78)
		Display.long_line
		Display.blank
		Display.long_line
		puts "PRESS ENTER TO CONTINUE".center(78)
		gets.chomp
		choose_winner
	end

	def choose_winner
		Display.clearscreen
		Display.showtitle
		Display.you_choose
		inputok = false
		until inputok
		case gets.chomp.upcase
		when "D", "DEM", "DEMS", "DEMOCRAT", "DEMOCRATS", "DEMOCRATIC", "DEMOCRATIC PARTY", "1"
			inputok = true
			demswin
		when "R", "REP", "GOP", "REPUBLICANS", "REPUBLICAN", "REPUBLICAN PARTY", "2"
			inputok = true
			repswin
		else
			inputok = false
			choose_winner
		end
	end
	end

end


