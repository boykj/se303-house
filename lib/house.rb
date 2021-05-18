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

		ary = ["the house", "the malt that lay", "the rat that ate", "the cat that killed",
			"the dog that worried", "the cow with the crumpled horn that tossed", "the maiden all forlorn that milked",
			"the man all tattered and torn that kissed", "the priest all shaven and shorn that married",
			"the rooster that crowed in the morn that woke", "the farmer sowing his corn that kept",
			"the horse and the hound and the horn that belonged to"
		]
		counter = number

		case number
		when 1
			"#{ary[number - 1]}"
		when 2
			"#{ary[number - 1]}"
		when 3
			"#{ary[number - 1]} " + additional_verse(number - 1)
		when 4
			"#{ary[number - 1]} " + additional_verse(number - 1)
		when 5
			"#{ary[number - 1]} " + additional_verse(number - 1)
		when 6
			"#{ary[number - 1]} " + additional_verse(number - 1)
		when 7
			"#{ary[6]} " + additional_verse(6)
		when 8 
			"#{ary[7]} " + additional_verse(7)
		when 9
			"#{ary[8]} " + additional_verse(8)
		when 10
			"#{ary[9]} " + additional_verse(9)
		when 11
			"#{ary[10]} " + additional_verse(10)
		when 12
			"#{ary[11]} " + additional_verse(11)
		end
	end

end