class House

    def line(number = :FIXME)

        def default_verse
            "This is the house that Jack built.\n"
        end

        case number
        when 1
            "#{default_verse}"
        when 2
            "This is the malt that lay in the house that Jack built.\n"
        when 3
            "This is the rat that ate the malt that lay in the house that Jack built.\n"
        end
    end

end