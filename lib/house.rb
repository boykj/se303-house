class House

  def recite
		(1..12).collect { |i| line(i)}.join("\n")
  end

  def line(number)
		house_verse = HouseVerse.new(number)
		"This is #{house_verse.verses(number)}.\n"
  end

	def verses(number)
		HouseVerse.new(number).verses(number)
	end

end

class HouseVerse

	#attr_reader :number, :pronouns

	def initialize(number)
		@number = number
	end

	def verses(number)

		pronouns = ["the house that Jack built", "the malt that lay in", "the rat that ate", "the cat that killed",
			"the dog that worried", "the cow with the crumpled horn that tossed", "the maiden all forlorn that milked",
			"the man all tattered and torn that kissed", "the priest all shaven and shorn that married",
			"the rooster that crowed in the morn that woke", "the farmer sowing his corn that kept",
			"the horse and the hound and the horn that belonged to"
		]

		if number == 1
			"#{pronouns[number - 1]}" 
		else
			"#{pronouns[number - 1]} " + verses(number - 1)
		end
	end
	
end