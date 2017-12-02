# recives a input type String
# I want to break down the string into collections
# Has to compare the first and the second digit and so forth
# if the digit matches the next digit put him aside 
# sum all the matching digits
# return 0 if there is no collection with matching digits

class InverseCaptcha
  
  def sum(input)
    matches_element(input.split(""))
  end
  
  def matches_element(input)
    matching_array = []
    input << input.first # to loop throug the first element again
    input.each_cons(2) do |first, next_one|
      matching_array << next_one if first == next_one
    end
    matching_array.map(&:to_i).sum
  end

end
