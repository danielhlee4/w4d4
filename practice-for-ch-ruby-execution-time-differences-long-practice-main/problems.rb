require "byebug"
def my_min(list)
    min_el = list[0]
    list.each_with_index do |el_1, i|
        list.each_with_index do |el_2, j|
            if i < j
                if el_1 < el_2 && min_el > el_1
                    min_el = el_1
                elsif el_2 < el_1 && min_el > el_2
                    min_el = el_2
                end
            end
        end
    end
    min_el
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

def my_min_2(list)
    min_el = list.first
    i = 0
    while i < list.length - 1
        min_el = list[i] if list[i] < list[i+1] && min_el > list[i]
        i += 1
    end
    min_el
end

# p my_min_2(list)  # =>  -5


def largest_contiguous_subsum(list)
    sub_arr = []


    (0...list.length-1).each do |start_idx|
        
        # temp_arr = [list[start_idx]]
        (start_idx...list.length).each do |target_idx|
            
            if start_idx == target_idx
                sub_arr << [list[start_idx]]
            else
                temp_arr << list[target_idx]
                sub_arr << temp_arr
            end
            debugger
        end
    end
    return sub_arr
end




list = [5, 3, -7]
p largest_contiguous_subsum(list) # => 8

# possible sub-sums
[5]           # => 5
[5, 3]        # => 8 --> we want this one
[5, 3, -7]    # => 1
[3]           # => 3
[3, -7]       # => -4
[-7]          # => -7