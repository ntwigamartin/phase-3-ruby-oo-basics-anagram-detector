class Anagram
    attr_reader :word
    def initialize(word)
        @word = word
    end

    def match(words_array)
        matched_array = []
        words_array.select do |element|
            if @word.chars.sort == element.chars.sort
                matched_array.push(element)
            end
        end
        matched_array
    end
end

listen = Anagram.new('allergy')

pp listen.match(%w[gallery ballerina regally clergy largely leading])