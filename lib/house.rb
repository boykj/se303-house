class House

  def recite
		(1..12).collect { |i| line(i)}.join("\n")
  end

  def line(number)
		house_verse = HouseVerse.new(number)
		"This is #{house_verse.verses(number)}.\n"
  end

end

class HouseVerse

	attr_reader :number

	def initialize(number)
		@number = number
	end

	def pronouns_method
		return pronouns = ["the house that Jack built", "the malt that lay in", "the rat that ate", "the cat that killed",
		"the dog that worried", "the cow with the crumpled horn that tossed", "the maiden all forlorn that milked",
		"the man all tattered and torn that kissed", "the priest all shaven and shorn that married",
		"the rooster that crowed in the morn that woke", "the farmer sowing his corn that kept",
		"the horse and the hound and the horn that belonged to"
	]
	end
	
	def predecessor(number)
		number - 1
	end

	def verses(number)
		if number == 1
			"#{pronouns_method[predecessor(number)]}"
		else
			"#{pronouns_method[predecessor(number)]} " + verses(number - 1)
		end
	end
	
end