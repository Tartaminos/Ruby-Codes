#Write a method that takes a number as an input an generates an output by adding each digit. Including tests will be appreciated.
#See the examples:
# 16 --> 1 + 6 = 7

# 942 --> 9 + 4 + 2 = 15 --> = 1 + 5 = 6

# 132189 --> 1 + 3 + 2 + 1 + 8 + 9 = 24 --> 2 + 4 = 6

# 493193 --> 4 + 9 + 3 + 1 + 9 + 3 = 29 --> 2 + 9 = 11 --> 1 + 1 = 2


class SumDigit

    def input_and_output

        puts "Enter a number: "
        number = gets.chomp

        puts split_and_sum(number)
        
    end

    def split_and_sum(number)
        if number.to_i > 0
            number = number.chars
            number = number.map{|value| value.to_i}

            added_number = number.sum

            if number.length == 2 && added_number <= 10
                return added_number.to_s
            else
                split_and_sum(added_number.to_s)
            end
        else
            return "Invalid number"
        end
    end

end