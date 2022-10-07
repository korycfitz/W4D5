def first_anagram?(word1, word2)
    arr = word1.split("").permutation.to_a
    arr.include?(word2.split(""))
end

def second_anagram?(word1, word2)
    return false if word1 == "" || word2 == ""
    arr = word2.split("")
    word1.each_char.with_index do |char, i|
        if arr.include?(char)
            idx = arr.find_index(char)
            arr.delete_at(idx)
        end
    end
    if arr.empty?
        return true
    else
        return false
    end
end

def third_anagram?(word1, word2)
    word1.split("").sort == word2.split("").sort
end

def fourth_anagram?(word1, word2)
    hash = Hash.new(0)
    hash1 = Hash.new(0)

    word1.each_char do |char|
        hash[char] += 1
    end
    word2.each_char do |char|
        hash1[char] += 1
    end

    hash == hash1

end

p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true