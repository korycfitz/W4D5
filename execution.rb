def my_min(arr)
    min = arr[0]
    arr.each do |ele1|
        arr.each do |ele2|
            if ele1 < ele2 && min > ele1
                min = ele1
            elsif min > ele2
                min = ele2
            end
        end
    end
    min
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)  # =>  -5

def my_min2(arr)
    min = arr.first
    arr.each do |ele|
        if ele < min
            min = ele 
        end
    end
    return min
end
list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min2(list)  # =>  -5

def largest_contiguous_subsum(arr)
    new_arr = []
    (0...arr.length).each do |idx1|
        (idx1...arr.length).each do |idx2|
            new_arr << arr[idx1..idx2].sum
        end
    end
    new_arr.max
end

list = [5, 3, -7]
p largest_contiguous_subsum(list) # => 8
list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])

def largest_contiguous_subsum2(arr)
    current_sum = 0
    largest_sum = 0
    arr.each do |ele|

    end
end