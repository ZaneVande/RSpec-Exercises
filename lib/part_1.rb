def partition(arr, num)
    left = []
    right = []

    arr.each do |ele|
        if ele < num
            left << ele
        else
            right << ele
        end
    end
    [left, right]
end

#########################################

def merge(hash_1, hash_2)
    new_hash = {}

    hash_1.each { |k, v| new_hash[k] = v }
    hash_2.each { |k, v| new_hash[k] = v }

    new_hash

end

#########################################

def censor(sentence, arr)
    words = sentence.split(" ")
    words.map do |word|
        if arr.include?(word.downcase)
            word.gsub(/[aeiou]/i, "*")
        else
            word
        end
    end.join(" ")
end

#########################################

def power_of_two?(num)



end

#########################################