require "pry"

#def oxford_comma(array)
 #   array.join(" and ")
#end

#what about iterating through the array and adding commas into the array before converting, and somwhow knowing when the last variable is so adding an and before it?

def oxford_comma(array)
  if array.size == 1 
    #binding.pry
    array.join
  elsif array.size == 2
    array.join(" and ")
    #binding.pry
  else
    last_item = array.last
    array.pop
    new_string = array.join(", ")
    new_string << ", and #{last_item}"
  end
end