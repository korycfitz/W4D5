def two_sum?(arr, target_sum)
    (0...arr.length - 1).each do |idx|
        (idx + 1..arr.length - 1).each do |idx1|
            if arr[idx] + arr[idx1] == target_sum
                return true
            end
        end
    end
    false
end


arr = [0, 1, 5, 7]
arr1 = [2, 3, 7, 9, 0, 11]
p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false

def okay_two_sum?(arr, target_sum)


end