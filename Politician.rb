class Politician < Voter
	
	@@politicians = []
	@@politiciannums = []
	
	attr_accessor :party
	
	def initialize
		Display.politicianname
		getsname
		Display.politicianparty
		getsparty
		Display.savingpolitician
		puts "| NAME: #{@name}   | PARTY: #{@party}" + " "*(47 - (@name.length + @party.length)) + "|"
		Display.bottom
		sleep 2
	end

	def getsparty
		inputok = false
		until inputok
			@party = gets.chomp.upcase		
			case @party
			when "D", "DEM", "DEMS", "DEMOCRAT", "DEMOCRATS", "DEMOCRATIC", "DEMOCRATIC PARTY", "1"
				@party = "DEMOCRAT"
				@politicalnum = 100
				inputok = true
			when "R", "REP", "GOP", "REPUBLICANS", "REPUBLICAN", "REPUBLICAN PARTY", "2"
				@party = "REPUBLICAN"
				@politicalnum = 0
				inputok = true
			else 
				inputok = false
				Display.politicianparty
			end
		end
	end

	def getsname
		inputok = false
		until inputok == true
		@name = gets.chomp.upcase
			if @name != nil and @name.squeeze.length > 0
				inputok = true
			else inputok = false
				Display.politicianname
			end
		end
	end

	def update
		Display.new_politician_name
		inputok = false
		until inputok
			@name = gets.chomp.upcase
			if @name != nil and @name.squeeze.length > 0
				inputok = true
			else inputok = false
				Display.new_politician_name
			end
		end
		Display.politicianparty
		getsparty
		Display.savingpolitician
		puts "| NAME: #{@name}   | PARTY: #{@party}" + " "*(47 - (@name.length + @party.length)) + "|"
		Display.bottom
		sleep 2
	end

end
