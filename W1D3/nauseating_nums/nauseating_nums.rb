def strange_sums(arr)
    count = 0

    arr.each_with_index do |ele, i| 
        arr[i+1..-1].each do |ele2|
            count += 1 if ele + ele2 == 0
        end
    end

    count 
end

# p strange_sums([2, -3, 3, 4, -2])     # 2
# p strange_sums([42, 3, -1, -42])      # 1
# p strange_sums([-5, 5])               # 1
# p strange_sums([19, 6, -3, -20])      # 0
# p strange_sums([9])                   # 0

def pair_product(nums, prod)
    nums.each_with_index do |num, i|
        nums[i+1..-1].each do |num2|
            return true if num * num2 == prod
        end
    end

    false
end

# p pair_product([4, 2, 5, 8], 16)    # true
# p pair_product([8, 1, 9, 3], 8)     # true
# p pair_product([3, 4], 12)          # true
# p pair_product([3, 4, 6, 2, 5], 12) # true
# p pair_product([4, 2, 5, 7], 16)    # false
# p pair_product([8, 4, 9, 3], 8)     # false
# p pair_product([3], 12)             # false

def rampant_repeats(string, hash)
    new_str = ""
    string.each_char do |char| 
        if hash[char]
            hash[char].times { new_str += char }
        else
            new_str += char
        end
    end
    new_str
end

p rampant_repeats('taco', {'a'=>3, 'c'=>2})             # 'taaacco'
p rampant_repeats('feverish', {'e'=>2, 'f'=>4, 's'=>3}) # 'ffffeeveerisssh'
p rampant_repeats('misispi', {'s'=>2, 'p'=>2})          # 'mississppi'
p rampant_repeats('faarm', {'e'=>3, 'a'=>2})            # 'faaaarm'