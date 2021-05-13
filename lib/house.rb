require_relative 'verse_number'

class House

  def recite
		(1..12).collect { |i| line(i)}.join("\n")
  end

  def line(number)
		"#{phrase(number)}"
  end
    
  def phrase(number)
		"#{intro_verse} #{additional_verse(number)} #{base_verse(number)}.\n"
  end

  def base_verse(number)
		if number == 1
			"that Jack built"
		else
			"in the house " + base_verse(1)
		end
  end

	def intro_verse
		"This is"
	end

	def additional_verse(number)
		case number
		when 1
			"the house"
		when 2
			"the malt that lay"
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
		end
	end

end