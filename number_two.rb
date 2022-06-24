# Given there are 8 employees in the database and each one has exactly 2 addresses. How many queries get generated in each case? Could you explain why? 

class Employee < ApplicationRecord

    has_many :addresses
   
end
   
    

#    1)

# In this case will generate one single querry loading everything of employee table, i search a lot but dont find out why actieve record do this

Employee.all.each do |emp|

    emp.addresses.each { |addr| puts (addr.street) }

end

    

#    2)

# Here will generate one query for each address to search by street because joins clause dont load the relation data and then
# have to do a new query in every line, i found that is called N+1 problem

Employee.joins(:addresses).all.each do |emp|

    emp.addresses.each { |addr| puts (addr.street) }

end



#    3)

# In this case includes will load the relation data and execute just one query returning all addresses in table
# that prevents the N+1 problem mentioned above

Employee.includes(:addresses).all.each do |emp|

    emp.addresses.each { |addr| puts (addr.street) }

end



# 4)

# Based on cases above i believe here the join will generate one query for each address and includes will load the relation data in every query,
# i believe that is very very heavy but i'm not sure

Employee.joins(:addresses).includes(:addresses).all.each do |emp|

    emp.addresses.each { |addr| puts(addr.street) }

end