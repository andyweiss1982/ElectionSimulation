class Voter
	
	attr_accessor :name, :politics, :politicalnum
	
	def initialize
		Display.votername
		getsname
		Display.voterpolitics
		getspolitics
		Display.savingvoter
		puts "| NAME: #{@name}   | POLITICS: #{@politics}" + " "*(44 - (@name.length + @politics.length)) + "|"
		Display.bottom
		sleep 2
	end

	def getsname
		inputok = false
		until inputok == true
		@name = gets.chomp.upcase!
			if @name != nil and @name.squeeze.length > 0
				inputok = true
			else inputok = false
				Display.votername
			end
		end
	end

	def getspolitics
		inputok = false
		until inputok
		@politics = gets.chomp.upcase!
			case @politics
			when "L", "1", "LIBERAL"
			@politics = "LIBERAL"
			@politicalnum = 70
			inputok = true
			when "C", "2", "CONSERVATIVE"
			@politics = "CONSERVATIVE"
			@politicalnum = 30
			inputok = true
			when "T", "3", "TP", "TEA", "TEA PARTY"
			@politics = "TEA PARTY"
			@politicalnum = 10
			inputok = true
			when "S", "4", "SOCIALIST"
			@politics = "SOCIALIST"
			@politicalnum = 90
			inputok = true
			when "N", "5", "NEUTRAL"
			@politics = "NEUTRAL"
			@politicalnum = 50
			inputok = true
			else inputok = false
			Display.voterpolitics
			end
		end
	end

	def update
		Display.newvotername
		inputok = false
		until inputok
			@name = gets.chomp.upcase!
			if @name != nil and @name.squeeze.length > 0
				inputok = true
			else inputok = false
				Display.newvotername
			end
		end
		Display.voterpolitics
		getspolitics
		Display.savingvoter
		puts "| NAME: #{@name}   | POLITICS: #{@politics}" + " "*(44 - (@name.length + @politics.length)) + "|"
		Display.bottom
		sleep 2
	end
end
