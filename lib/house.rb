class House

  def recite
		(1..12).collect { |i| line(i)}.join("\n")
  end

  def line(number)
		"This is #{additional_verse(number)}.\n"
  end

	def additional_verse(number)

		verses = ["the house", "the malt that lay in", "the rat that ate", "the cat that killed",
			"the dog that worried", "the cow with the crumpled horn that tossed", "the maiden all forlorn that milked",
			"the man all tattered and torn that kissed", "the priest all shaven and shorn that married",
			"the rooster that crowed in the morn that woke", "the farmer sowing his corn that kept",
			"the horse and the hound and the horn that belonged to", "that jack built"
		]

		if number == 1
			"#{verses[number - 1]}" + " that Jack built"
		elsif number == 2
			"#{verses[number - 1]}" + " the house that Jack built"
		else
			"#{verses[number - 1]} " + additional_verse(number - 1)
		end
	end

end