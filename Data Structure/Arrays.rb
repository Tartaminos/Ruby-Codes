# doc ruby-doc.org/core-2.7.1/Array.html

def printing()
    arrays = StudyArrays.new
    arrays.print_all()
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
 





#################################################### printing all ################################################################        
        puts "hi! here is all arrays inside this class."
        puts "literal contructor: #{array}"
        puts "Instantiation: \n
            #{array_2} \n
            with size #{array_3} \n
            with size and default value #{array_4} \n
            with hashes #{array_5}; #{array_6} \n
            creating a table #{array_7}"
        
    end
end

printing()
