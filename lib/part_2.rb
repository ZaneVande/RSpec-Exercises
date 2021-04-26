def palindrome?(str)

    if str.length == 1 || str.length == 0
        true
    else
        if str[0] == str[-1]
            palindrome?(str[1..-2])
        else
            false
        end
    end
end

##################################

def substrings(str)
    subs = []
    (0...str.length).each do |start_idx|
        (start_idx...str.length).each do |end_idx|
            subs << str[start_idx..end_idx]
        end
    end
    subs
end

##################################

def palindrome_substrings(str)

    substrings(str).select { |sub_str| palindrome?(sub_str) && sub_str.length > 1 }

end