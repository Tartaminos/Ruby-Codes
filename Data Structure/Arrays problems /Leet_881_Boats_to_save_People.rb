# You are given an array people where people[i] is the weight of the ith person, 
# and an infinite number of boats where each boat can carry a maximum weight of limit.
# Each boat carries at most two people at the same time, provided the sum of the weight of those people is at most limit.

# Return the minimum number of boats to carry every given person.

def num_rescue_boats(people, limit)
    boats = 0
    people.sort!
    left = 0
    rigth = people.length - 1

    while left <= rigth
        if people[left] + people[rigth] <= limit
            left += 1
        end
        rigth -= 1
        boats += 1
    end

    puts boats
end

num_rescue_boats([3,5,3,4], 5)