class House

  def recite
		(1..12).collect { |i| line(i)}.join("\n")
  end

  def line(number)
		"#{phrase(number)}"
  end
    
  def phrase(number)
		"This is #{additional_verse(number)} #{base_verse(number)}.\n"
  end

  def base_verse(number)
		if number == 1
			"that Jack built"
		else
			"in the house " + base_verse(1)
		end
  end

	def additional_verse(number)

		number_minus_one = number - 1

		ary = ["the house", "the malt that lay", "the rat that ate", "the cat that killed",
			"the dog that worried", "the cow with the crumpled horn that tossed", "the maiden all forlorn that milked",
			"the man all tattered and torn that kissed", "the priest all shaven and shorn that married",
			"the rooster that crowed in the morn that woke", "the farmer sowing his corn that kept",
			"the horse and the hound and the horn that belonged to"
		]

		if number == 1 || number == 2
			"#{ary[number_minus_one]}"
		else
			"#{ary[number_minus_one]} " + additional_verse(number_minus_one)
		end
	end

end