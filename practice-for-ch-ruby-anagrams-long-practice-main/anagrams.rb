def first_anagram?(word1, word2)
    arr =[]
    word1_arr = word1.split("")
    word2_arr = word2.split("")

    word1_perms = word1_arr.permutation(word1_arr.length).to_a
    return word1_perms.include?(word2_arr)
end

p first_anagram?("gizmo", "sally")    #=> false
p first_anagram?("elvis", "lives")    #=> true

