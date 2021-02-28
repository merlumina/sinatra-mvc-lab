class PigLatinizer

    def piglatinize(phrase)
        phrase.split(" ").map {|word| piglatinize_word(word)}.join(" ")
    end

    private

    def piglatinize_word(word)
        if vowel?(word[0])
            word + "way"
        else
            vowel_index = word.index(/[AaEeIiOoUu]/)
            consonants = word.slice(0..vowel_index-1)
            word_leftover = word.slice(vowel_index..word.length)
            word_leftover + consonants + "ay"
        end
    end

    def vowel?(char)
        char.match(/[AaEeIiOoUu]/)
    end

end
