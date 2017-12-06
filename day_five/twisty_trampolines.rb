class TwistyTrampolines
  def initialize(list)
    @list = list # [1,2,3]
  end 
  
  def steps_exit
    steps_to_exit = 0
    position = 0
    while position < @list.length || position < 0 do 
      old_position = position
      position += @list[position]
      steps_to_exit += 1
      @list[old_position] = @list[old_position] + 1         
    end
    steps_to_exit
  end
end

input = (File.readlines('input.txt')).map(&:to_i)

puts TwistyTrampolines.new(input).steps_exit
