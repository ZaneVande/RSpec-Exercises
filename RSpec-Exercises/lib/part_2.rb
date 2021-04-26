def hipsterfy(word)

    word.reverse.sub(/[aeiou]/, "").reverse 
    
    #learned .sub from ruby-doc.org, make this problem really easy.

end

######################################

def vowel_counts(str)
    
    new_str = str.downcase
    new_str.gsub(/[^aeiou]/, "").each_char.each_with_object(Hash.new(0)) { |vowel, hash| hash[vowel] += 1 }
    
end

######################################

def caesar_cipher(str, num)
    letters = ('a'..'z').to_a

    str.chars.map do |letter|
        if letters.include?(letter.downcase)
            idx = letters.index(letter)
            new_idx = (idx + num) % letters.length
            letters[new_idx]
        else
            letter
        end
    end.join


end