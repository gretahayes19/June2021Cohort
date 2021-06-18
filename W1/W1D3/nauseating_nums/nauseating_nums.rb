## PHASE 1
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

# p rampant_repeats('taco', {'a'=>3, 'c'=>2})             # 'taaacco'
# p rampant_repeats('feverish', {'e'=>2, 'f'=>4, 's'=>3}) # 'ffffeeveerisssh'
# p rampant_repeats('misispi', {'s'=>2, 'p'=>2})          # 'mississppi'
# p rampant_repeats('faarm', {'e'=>3, 'a'=>2})            # 'faaaarm'

def perfect_square 
    sqrt = Math.sqrt(num).to_i 
    sqrt * sqrt == num
end

##PHASE 2
##PHASE 2
##PHASE 2
##PHASE 2
##PHASE 2
##PHASE 2



def anti_prime?(targ)
    amount = num_factors(targ)
    (1...targ).all? { |i| amount > num_factors(i) }
end

def num_factors(num)
    (1..num).count { |n| num % n == 0 }
end

# p anti_prime?(24)   # true
# p anti_prime?(36)   # true
# p anti_prime?(48)   # true
# p anti_prime?(360)  # true
# p anti_prime?(1260) # true
# p anti_prime?(27)   # false
# p anti_prime?(5)    # false
# p anti_prime?(100)  # false
# p anti_prime?(136)  # false
# p anti_prime?(1024) # false


def matrix_addition(m1, m2)
    rows = m1.length
    cols = m1[0].length
    result = Array.new(rows) { Array.new(cols, 0)}
    (0...rows).each do |row|
        (0...cols).each do |col|
            result[row][col] = m1[row][col] + m2[row][col]
        end
    end
    
    result
end

# matrix_a = [[2,5], [4,7]]
# matrix_b = [[9,1], [3,0]]
# matrix_c = [[-1,0], [0,-1]]
# matrix_d = [[2, -5], [7, 10], [0, 1]]
# matrix_e = [[0 , 0], [12, 4], [6,  3]]

# p matrix_addition(matrix_a, matrix_b) # [[11, 6], [7, 7]]
# p matrix_addition(matrix_a, matrix_c) # [[1, 5], [4, 6]]
# p matrix_addition(matrix_b, matrix_c) # [[8, 1], [3, -1]]
# p matrix_addition(matrix_d, matrix_e) # [[2, -5], [19, 14], [6, 4]]

def mutual_factors(*nums)
    nums
        .map { |n| factors(n) }
        .inject(:&)
end

def factors(num)
    (1..num).select { |i| num % i == 0}
end

# p mutual_factors(8, 4)              # [1, 2, 4]
# p mutual_factors(8, 4, 10)          # [1, 2]
# p mutual_factors(12, 24)            # [1, 2, 3, 4, 6, 12]
# p mutual_factors(12, 24, 64)        # [1, 2, 4]
# p mutual_factors(50, 30)            # [1, 2, 5, 10]
# p mutual_factors(50, 30, 45, 105)   # [1, 5]
# p mutual_factors(22, 44)            # [1, 2, 11, 22]
# p mutual_factors(22, 44, 11)        # [1, 11]
# p mutual_factors(7)                 # [1, 7]
# p mutual_factors(7, 9)              # [1]

def tribonacci_number(n) 
    return 1 if n == 1 || n == 2

    return 2 if n == 3

    return tribonacci_number(n-1) + tribonacci_number(n-2) + tribonacci_number(n-3)
end

# p tribonacci_number(1)  # 1
# p tribonacci_number(2)  # 1
# p tribonacci_number(3)  # 2
# p tribonacci_number(4)  # 4
# p tribonacci_number(5)  # 7
# p tribonacci_number(6)  # 13
# p tribonacci_number(7)  # 24
# p tribonacci_number(11) # 274



#PHASE 3
#PHASE 3
#PHASE 3
#PHASE 3


require "byebug"
def matrix_addition_reloaded(*matricies)
    matrix = matricies.first
    height = matrix.length
    width = matrix[0].length

    empty_matrix = Array.new(height) { [0] * width }
    matricies.inject(empty_matrix) do |m1, m2|
        # debugger
        return nil if m2.length != height or m2[0].length != width
        matrix_addition(m1, m2)
    end
end

matrix_a = [
    [2,5], 
    [4,7]
        ]
matrix_b = [
    [9,1], 
    [3,0]
    ]
matrix_c = [[-1,0], [0,-1]]
matrix_d = [[2, -5], [7, 10], [0, 1]]
matrix_e = [[0 , 0], [12, 4], [6,  3]]
# p matrix_addition_reloaded(matrix_a, matrix_b)              # [[11, 6], [7, 7]]
# p matrix_addition_reloaded(matrix_a, matrix_b, matrix_c)    # [[10, 6], [7, 6]]
# p matrix_addition_reloaded(matrix_e)                        # [[0, 0], [12, 4], [6, 3]]
# p matrix_addition_reloaded(matrix_d, matrix_e)              # [[2, -5], [19, 14], [6, 4]]
# p matrix_addition_reloaded(matrix_a, matrix_b, matrix_e)    # nil
# p matrix_addition_reloaded(matrix_d, matrix_e, matrix_c)    # nil


def squarocol?(grid)
    return true if grid.any? { |row| row.uniq.length == 1 }
    return true if grid.transpose.any? { |col| col.uniq.length == 1 }
    false
end

def squaragonal(grid)
    size = grid.length - 1
    diag_one = []
    (0..size).each { |idx| diag_one.push(grid[idx][idx]) }
    return true if diag_one.uniq.length == 1
    
    diag_two = []
    (0..size).each { |idx| diag_two.push(grid[idx][size - idx]) }
    return true if diag_two.uniq.length == 1

    false
end




def adjacent_sums(arr)
    sums = []
    (0...arr.length-1).each do |i|
        sums << arr[i] + arr[i + 1]
    end
    sums
end

def pascals_triangle(n)
    triangle = [[1]]
    while triangle.length < n
        level_above = triangle.last
        next_level = [1]
        next_level += adjacent_sums(level_above)
        next_level << 1
        triangle << next_level
    end
    triangle
end

# p pascals_triangle(5)


##PHASE 4
##PHASE 4
##PHASE 4
##PHASE 4
##PHASE 4

def prime?(num)
    return  false if num < 2
    (2...num).none? { |i| num % i == 0 }
end

def mersenne_prime(n)
    x = -1
    count = 0
    while count < n
        x += 1
        candidate = 2**x - 1
        count += 1 if prime?(candidate)
    end
    2**x - 1
end

# p mersenne_prime(1) # 3
# p mersenne_prime(2) # 7
# p mersenne_prime(3) # 31
# p mersenne_prime(4) # 127
# p mersenne_prime(6) # 131071

def triangular_sequence(n)
    seq = []
    i = 1
    while i <= n
        seq << (i * (i + 1)) / 2
        i += 1
    end
    seq
end

def triangular_word?(word)
    alpha = ('a'..'z').to_a
    value = word
        .split('')
        .map { |char| alpha.index(char) + 1 }
        .sum
    triangular_nums = triangular_sequence(value)
    triangular_nums.include?(value)
end



def collapse(nums)
    (0...nums.length - 1).each do |i|
        if nums[i] + 1 == nums[i + 1] || nums[i] == nums[i + 1] + 1
            return nums[0...i] + nums[i + 2..-1]
        end
    end

    nums
end

def consecutive_collapse(numbers)
    numbers.each { numbers = collapse(numbers) }
    numbers
end
