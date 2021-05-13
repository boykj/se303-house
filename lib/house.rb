class House

  def recite
		(1..12).collect { |i| line(i)}.join("\n")
  end

  def line(number)
		"#{phrase(number)}"
  end
    
  def phrase(number = :FIXME)
		case number
		when 1
			"#{intro} #{additional_verse(number)} #{default(number)}"
		else
			"#{intro} #{additional_verse(number)} #{default(number)}.\n"
		end
  end

  def default(number = :FIXME)
		if number == 1
			"that Jack built.\n"
		else
			"that lay in the house that Jack built"
		end
  end

	def intro
		"This is"
	end

	def additional_verse(number = :FIXME)
		case number
		when 1
			"the house"
		when 2
			"the malt"
		when 3
			"the rat that ate " + additional_verse(2)
		when 4
			"the cat that killed " + additional_verse(3)
		when 5
			"the dog that worried " + additional_verse(4)
		when 6
			"the cow with the crumpled horn that tossed " + additional_verse(5)
		when 7
			"the maiden all forlorn that milked " + additional_verse(6)
		when 8 
			"the man all tattered and torn that kissed " + additional_verse(7)
		when 9
			"the priest all shaven and shorn that married " + additional_verse(8)
		when 10
			"the rooster that crowed in the morn that woke " + additional_verse(9)
		when 11
			"the farmer sowing his corn that kept " + additional_verse(10)
		when 12
			"the horse and the hound and the horn that belonged to " + additional_verse(11)
		else
			"the rat that ate the malt"
		end
	end

end