def merge_sort(array)
    #basecase
    if array.length <= 1
        array

    else
        #devide string unttil indivisible
        if array.length.even? == true
            #two equal halves
            array_half_l = merge_sort(array[0..((array.length/2)-1)])
            array_half_r = merge_sort(array[(array.length/2)..-1])
            merge(array_half_l, array_half_r)

        else
            #two unequal halves. Left takes most elements
            #odd includes 1 so this is where sub division stops
            array_half_l =  merge_sort(array[0..((array.length/2 + 0.5)-1)])
            array_half_r =  merge_sort(array[(array.length/2 + 0.5)..-1])
            merge(array_half_l, array_half_r)

        end

    end

end

def merge(array_half_l, array_half_r)
    #checking which element is larger follows    
    array_out = []
    (array_half_l.length + array_half_r.length).times do
        if array_half_r[0].nil?
            array_out.append(array_half_l.shift)

        elsif array_half_l[0].nil?
            array_out.append(array_half_r.shift)

        elsif array_half_l[0] > array_half_r[0]
            array_out.append(array_half_r.shift)

        elsif  array_half_l[0] < array_half_r[0]
            array_out.append(array_half_l.shift)

        end

    end

    return array_out

end

arr = [8, 18, 14, 5, 19, 10, 6, 3]
sorted_array = merge_sort(arr)
p sorted_array
