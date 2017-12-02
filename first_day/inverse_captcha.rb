class InverseCaptcha
  def sum(input)
    matches_element(input.split(""))
  end
  
  def matches_element(input)
    matching_array = []
    input << input.first 
    input.each_cons(2) do |first, next_one|
      matching_array << next_one if first == next_one
    end
    matching_array.map(&:to_i).sum
  end
end
