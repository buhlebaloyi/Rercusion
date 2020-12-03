def fibs(value = 1)
    temp = 1
    number1 = 1
    number2 = 1
    if value == 1
        print "01"
    else
        until temp == value
            number = number1 + number2
            number2 = number1
            number1 = number
            print number
            temp += 1

        end
        

    end

end

def fibs_rec(value)
    return value if value < 2
    fibs_rec(value-1) + fibs_rec(value-2)

end

a = fibs(4)
b = fibs_rec(4)