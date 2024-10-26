=begin
You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.

You may assume the two numbers do not contain any leading zero, except the number 0 itself.

example
Input: l1 = [2,4,3], l2 = [5,6,4]
Output: [7,0,8]
Explanation: 342 + 465 = 807.

=end

def add_two_numbers(l1, l2)
  list = ""
  list2 = ""

  l1.each_with_index do |number, index|
    list += "#{l1[index]}"
  end

  l2.each_with_index do |number, index|
    list2 += "#{l2[index]}"
  end

  sum_lists = list.to_i + list2.to_i

  final = sum_lists.to_s.split("").reverse.to_s

  puts final
end

add_two_numbers([2,4,3], [5,6,4])