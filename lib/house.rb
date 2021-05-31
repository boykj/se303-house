require_relative 'house_verse'

class House

  def recite
		(1..12).collect { |i| line(i)}.join("\n")
  end

  def line(number)
		house_verse = HouseVerse.for(number)
		"#{house_verse.intro} #{house_verse.verses(number)}.\n"
  end

end