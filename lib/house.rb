require_relative 'house_verse'

class House

  def recite
		(1..12).collect { |i| line(i)}.join("\n")
  end

  def line(number)
		pirate_verse = PirateVerse.new(number)
		"#{pirate_verse.intro} #{pirate_verse.verses(number)}.\n"
  end

end