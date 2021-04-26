def average(num_1, num_2)

    (num_1 + num_2) / 2.0

end

######################################

def average_array(arr)

   arr.inject(0.0) { |sum, el| sum + el } / arr.length

end

######################################

def repeat(str, num)

    str * num

end

######################################

def yell(str)

    str.upcase + "!"

end

######################################

def alternating_case(str)
    new_str = str.split(" ")
    alternating = []
    new_str.select.with_index do |word, idx|
        if idx.even?
            alternating << word.upcase
        else
            alternating << word.downcase
        end
    end
    return alternating.join(" ")
end