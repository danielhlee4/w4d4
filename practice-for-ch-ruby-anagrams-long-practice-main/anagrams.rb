def first_anagram?(word1, word2)
    arr =[]
    word1_arr = word1.split("")
    word2_arr = word2.split("")

    word1_perms = word1_arr.permutation(word1_arr.length).to_a
    return word1_perms.include?(word2_arr)
end

# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true

def second_anagram?(string1, string2)
    string1_arr = string1.split("")
    string2_arr = string2.split("")

    string1_arr.each do |char|
        if string2_arr.find_index(char).nil?
            return false
        else
            string2_arr.delete_at(string2_arr.find_index(char))
        end
    end

    return string2_arr.length == 0
end

p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")    #=> true