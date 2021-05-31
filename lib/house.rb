require_relative 'house_verse'

class House

  def recite
		(1..12).collect { |i| line(i)}.join("\n")
  end

  def line(number)
		house_verse = HouseVerse.new(number)
		"#{house_verse.intro(number)} #{house_verse.verses(number)}.\n"
  end

end