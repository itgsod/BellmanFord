def compare(a,b)
    c = a <=> b
    if ((a<=>b) == 0)
        puts "a equal b"
    elsif ( c == 1)
        puts "a >b"
    elsif ( c == -1)
        puts "a<b"
    else
        puts "Error"
    end

end

compare(2323232323234,2323232323234)
