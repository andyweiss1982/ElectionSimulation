require "./ElectionDisplay.rb"
require "./Voter.rb"
require "./Politician.rb"
require "./ElectionMechanics.rb"

class Simulation
	include ElectionMechanics
	def initialize
		@voters = []
		@politicians = []
		mainmenu
	end

	def mainmenu
		Display.mainmenu
		case gets.chomp.downcase
		when "create", "c", "1"
			create_character
		when "list", "l", "2"
			list_characters
		when "update", "u", "3"
			update_characters
		when "vote", "v", "4"
			check_characters
		else
			mainmenu
		end
	end

	def create_character
		Display.createcharacter
		case gets.chomp.downcase
		when "politician", "p", "1"
			create_politician
		when "voter", "v", "2"
			create_voter
		else 
			create_character
		end
	end

	def create_politician
		@politicians << Politician.new
		mainmenu
	end

	def create_voter
		@voters << Voter.new
		mainmenu
	end

	def list_characters
		Display.clearscreen
		Display.line
		Display.vote_here
		Display.blank
		Display.line
		puts "CANDIDATE LIST:".center(42)
		Display.line
		Display.blank
		@politicians.each {|politician| puts (politician.name + ", " + politician.party).center(42)}
		Display.blank
		Display.line
		puts "VOTER ROLLS:".center(42)
		Display.line
		Display.blank
		@voters.each {|voter| puts (voter.name + ", " + voter.politics).center(42)}
		Display.blank
		Display.line
		pressenter
	end

	def pressenter
			puts "    PRESS ENTER TO RETURN TO MAIN MENU"
			gets.chomp
			mainmenu
	end

	def update_characters
		Display.updatecharacter
		case gets.chomp.downcase
		when "politician", "p", "1"
			update_politician
		when "voter", "v", "2"
			update_voter
		else 
			update_characters
		end
	end

	def update_politician
		Display.update_politician_name
		nametochange = gets.chomp.upcase!
		politician = @politicians.select{|politician| politician.name == nametochange}.pop
		if politician.nil?
			Display.politician_not_found
			gets.chomp
			mainmenu
		else
			politician.update
			mainmenu
		end
	end

	def update_voter
		Display.updatevotername
		nametochange = gets.chomp.upcase!
		voter = @voters.select{|voter| voter.name == nametochange}.pop
		if voter.nil?
			Display.voternotfound
			gets.chomp
			mainmenu
		else
			voter.update
			mainmenu
		end
	end

	def check_characters
		@democrats = @politicians.select {|politician| politician.party == "DEMOCRAT"}
		@republicans = @politicians.select {|politician| politician.party == "REPUBLICAN"}

		if @democrats.length < 1 and @republicans.length > 0
			Display.no_dems
			gets.chomp
			mainmenu
		elsif @democrats.length > 0 and @republicans.length < 1
			Display.no_republicans
			gets.chomp
			mainmenu
		elsif @democrats.length < 1 and @republicans.length < 1
			Display.no_candidates
			gets.chomp
			mainmenu
		elsif @democrats.length > 0 and @republicans.length > 0 and @voters.length < 1
			Display.no_voters
			gets.chomp
			mainmenu
		else run_primaries
		end
	end
end

Simulation.new
