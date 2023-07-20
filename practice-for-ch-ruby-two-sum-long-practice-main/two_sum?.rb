def two_sum?(arr, target_sum)
    arr.inject {|acc, el| acc + el if el + acc == target_sum}
    return arr########
end





arr = [0, 1, 5, 7]
p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false