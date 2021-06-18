require "byebug" 
def zip(*arrs)
    len = arrs.first.length

    (0...len).map do |i|
        debugger
        arrs.map do |array| 
            debugger
            array[i] 
        end
    end

end

p zip([1, 2, 3], ["a", "b", "c"], [ 4, 5, 6])

def prizz_proc(array, prc1, prc2)
    array.select { |ele| ele if (prc1.call(ele) || prc2.call(ele)) && !(prc1.call(ele) && prc2.call(ele))}
end

def zany_zip(*arrays)
    length = arrays.map(&:length).max

    (0...length).map do |i|
        arrays.map { |array| array[i] }
    end
end

def maximum(array, &prc)
    return nil if array.empty?
    max = array.first
    array.each do |el|
        max = el if prc.call(el) >= prc.call(max)
    end
    max
end


def my_group_by(array, &prc)
    groups = Hash.new { |h, k| h[k] = [] }
    array.each do |el|
        key = prc.call(el)
        groups[key] << el
    end
    groups
end

def max_tie_breaker(array, tie_breaker, &prc)
    return nil if array.empty?
    max = array.first
    array.each do |el|
        result_el = prc.call(el)
        result_max = prc.call(max)
        if result_el > result_max
            max = el
        elsif result_el == result_max && tie_breaker.call(el) > tie_breaker.call(max)
            max = el
        end
    end
    max
end


def change_word(word)
    indices = vowel_indices(word)
    word[indices.first..indices.last]
end

def vowel_indices(word)
    vowels = 'aeiou'
    indices = []
    word.each_char.with_index do |char, i|
        indices << i if vowels.include?(char)
    end
    indices
end

def silly_syllables(sentence)
    words = sentence.split(' ')
    new_words = words.map do |word|
        num_vowels = vowel_indices(word).length
        if num_vowels < 2
            word
        else
            change_word(word)
        end
    end
    new_words.join(' ')
end