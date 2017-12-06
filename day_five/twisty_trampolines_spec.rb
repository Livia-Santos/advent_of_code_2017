require_relative 'twisty_trampolines'

describe 'twisty_trampolines' do
  
  it 'expect 5 steps to reach the exit' do
    list = TwistyTrampolines.new([0, 3, 0, 1, -3])
    expect(list.steps_exit).to eq(5)
  end


end