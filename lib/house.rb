class House

  def recite
		(1..12).collect { |i| line(i)}.join("\n")
  end

    
  def phrase(number = :FIXME)
	case number
	when 1
	  "This is the house that Jack built.\n"
	when 2
	  "This is the malt #{default}.\n"
	when 3
	  "This is #{additional_verse(number)} #{default}.\n"
	when 4
	  "This is #{additional_verse(number)} #{default}.\n"
	when 5
	  "This is #{additional_verse(number)} #{default}.\n"
	when 6
	  "This is #{additional_verse(number)} #{default}.\n"
	when 7
	  "This is #{additional_verse(number)} #{default}.\n"
	when 8
	  "This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed #{additional_verse} #{default}.\n"
	when 9
	  "This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed #{additional_verse} #{default}.\n"
	when 10
	  "This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed #{additional_verse} #{default}.\n"
	when 11
	  "This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed #{additional_verse} #{default}.\n"
	when 12
	  "This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed #{additional_verse} #{default}.\n"
  	end
  end

  def line(number)
		"#{phrase(number)}"
  end

  def default
		"that lay in the house that Jack built"
  end

	def additional_verse(number = :FIXME)
		case number
		when 3
			"the rat that ate the malt"
		when 4
			"the cat that killed " + additional_verse(3)
		when 5
			"the dog that worried " + additional_verse(4)
		when 6
			"the cow with the crumpled horn that tossed " + additional_verse(5)
		when 7
			"the maiden all forlorn that milked " + additional_verse(6)
		else
			"the rat that ate the malt"
		end
	end

end