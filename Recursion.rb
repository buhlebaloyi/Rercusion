def fibs(value = 1)
    temp = 1
    number1 = 1
    number2 = 1
    if value == 1
        puts "01"
    else
        stno = "11"
        until temp == value - 1
            number = number1 + number2
            number2 = number1
            number1 = number
            stno = stno + number.to_s
            temp += 1

        end
        

    end

    puts stno

end

def fibs_rec(value)
    return value if value < 2
    fibs_rec(value-1) + fibs_rec(value-2)

end

def printing_values(value)
    (1..value).each { |values| puts fibs_rec(values) }

end

a = printing_values(5)
b = fibs(5)
