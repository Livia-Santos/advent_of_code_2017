class Checksum
  
  def sum(input)
    Array(input).map{|row| row_difference(row)}.reduce(0, :+)
  end
    
  def row_difference(input)
    input.minmax.reduce(&:-).abs 
  end
  
end