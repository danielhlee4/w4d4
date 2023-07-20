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

# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true


def third_anagram?(string1, string2)
    alpha_sort(string1) == alpha_sort(string2)
end

def alpha_sort(string) # (big) constant * n so O(n)
    alpha = ("a".."z").to_a
    arr = string.split("")
    sorted = []

    alpha.each do |letter|
        if arr.include?(letter)
            sorted << arr.delete_at(arr.find_index(letter))
        end
    end
    sorted
end


# p third_anagram?("gizmo", "sally")    #=> false
# p third_anagram?("elvis", "lives")    #=> true

def fourth_anagram?(string1, string2)
    hash_1 = Hash.new(0)
    hash_2 = Hash.new(0)

    pop_hash(hash_1, string1) == pop_hash(hash_2, string2)
end

def pop_hash(hash, string) # => O(n)
    string.each_char do |char|
        hash[char] += 1
    end
    hash
end

p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true