require_relative "inverse_captcha"

describe 'inverse_captcha' do
  
  let(:inverse_captcha) { InverseCaptcha.new }

  it 'produces a sum of the matches numbers' do
    expect(InverseCaptcha.new.sum("11")).to eq(2)
  end
  
  it "1111 produces 4 because each digit (all 1) matches the next." do
    expect(InverseCaptcha.new.sum("1111")).to eq(4)
  end
  
  it "1234 produces 0 because no digit matches the next." do
    expect(InverseCaptcha.new.sum("1234")).to eq(0)
  end
  
  it "91212129 produces 9 because the only digit that matches the next one is the last digit, 9." do
    expect(InverseCaptcha.new.sum("91212129")).to eq(9)
  end

end
  