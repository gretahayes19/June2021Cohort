# Define your methods here.
def string_map!(s, &prc)
    s.each_char.with_index do |char, i|
        s[i]=prc.call(char)
    end
    s
end

def three?(a,&prc)
    a.select {|ele| prc.call(ele)}.length == 3
end

def nand_select(a, prc1, prc2)
    new_a = []
    new_a = a.reject {|ele| prc1.call(ele) && prc2.call(ele)}
    new_a
end

def hash_of_array_sum(h)
    h.values.flatten.sum
end

def abbreviate(s)
    s = s.split
    s.map! do |word|
        if word.length > 4
            word.delete("aeiouAEIOU")
        else
            word
        end
    end
    s.join(" ") 
end

def hash_selector(h, *args)
    new_h = {}
    return h if args.length == 0
    args.each do |arg|
        new_h[arg] = h[arg]
    end
    new_h
end