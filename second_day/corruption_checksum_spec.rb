require_relative "corruption_checksum"

describe 'corruption_checksum' do
  
  subject(:checksum) { Checksum.new }
  
  it 'passing a empty input' do
    expect(checksum.sum(nil)).to eq(0)
  end

  it 'in one row, determine the difference between the largest value and the smallest value' do
    expect(checksum.row_difference([5,1,9,5])).to eq(8)
  end
    
  it 'the checksum is the sum of all rows differences.' do
    expect(checksum.sum([[5,1,9,5],[7,5,3],[2,4,6,8]])).to eq(18)
  end
  
  
end
  
