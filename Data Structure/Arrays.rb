# doc ruby-doc.org/core-2.7.1/Array.html

def printing()
    arrays = StudyArrays.new
    arrays.print_all()
    # more about arrays and their logic insid .C files
end

class StudyArrays
    def print_all()
    # to create an array in ruby we have two ways: 
    # literal contructor
        array = [1, "2", 3.0]
    # using a instantiation, this way we can use one argument or two, first is size, second is default values
        array_2 = Array.new
        array_3 = Array.new(3)
        array_4 = Array.new(3, "i'm the default value")
    # with hashs
        array_5 = Array.new(4) {Hash.new}
        array_6 = Array.new(4) {|i| i.to_s}
    # creating a new table
        array_7 = Array.new(3) {Array.new(3)}

    ## accesing elements
        array_8 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 20, 30]
        # fetch rises and error, thats nice!
        # fetch = array_8.fetch(100) ----- if we let it uncomment will stop the code
        fetch_2 = array_8.fetch(100, "'oops, we also can set a custon message with fetch!'")
        # return first n elements of array
        take_first_n = array_8.take(3)
        #retur last n elements
        drop_after_n = array_8.drop(3)
        # what happens if we try to take or drop more than the total itens inside array?
        take_to_much = array_8.take(15)
        drop_to_much = array_8.drop(15)
    # adding items
        add_item_push = array_8.push(11, 12, 13) # push permits multiples values
        array_8.push(nil, nil, nil)
        array_8 << "i was add with << symbol"
        array_8.unshift("i was add at beginning using .unshift method")
        array_8.insert(4, "i was add in index 4 with .insert method using .insert(4, value) it also permits multiples values", "i'm a new one and next is a number 42", 42)
    # removing
        array_9 = array_8
        pop = array_9.pop # remove last item
        shift = array_9.shift # retrieves and remove the first element
        delete_at = array_9.delete_at(2) # removes from index 2
        delete = array_9.delete(2) # delete the value not the index
        remove_nil = array_9.compact # remove nil items



#################################################### printing all ################################################################        
        puts "hi! here is all arrays inside this class."
        puts "literal contructor: #{array}"
        puts "Instantiation: \n
            #{array_2} \n
            with size #{array_3} \n
            with size and default value #{array_4} \n
            with hashes #{array_5}; #{array_6} \n
            creating a table #{array_7}"
        puts "fetching arrays: #{fetch_2}"
        puts "taking first 3 elements: #{take_first_n}"
        puts "droping all elements after 3 elemetns: #{drop_after_n}"
        puts "taking over than n element inside array brings all elements: #{take_to_much}"
        puts "dropping over than n element inside array brings none: #{drop_to_much}"
        puts "pushing items 11, 12, 13 to array: #{add_item_push}"
        puts "that's the array after inset methods: \n #{array_8}"
        puts "poping itens from array \n 
            .pop removes last element: #{pop} \n
            .shift removes ans return first element:  #{shift} \n
            .delete_at delete from especific index(2): #{delete_at} \n
            .delete  removes the value (2): #{delete} \n
            .compact remove nil values: #{remove_nil} \n
    end
end

printing()
