require_relative "high_entropy_passphrases"

describe 'high_entropy_passphrases' do
    
  it 'produces a sum of the matches numbers' do
    expect(Passphrase.new("aa bb cc dd ee").is_valid?).to be(true)
  end
  
  it 'invalid data if the word aa appears more than once' do
    expect(Passphrase.new("aa bb cc dd aa").is_valid?).to be(false)
  end
  
  it "retrund valid - aa and aaa count as different words." do
    expect(Passphrase.new("aa bb cc dd aaa").is_valid?).to be(true)
  end

  it "passphrase list returns how many phrases are valid" do
    expect(PassphraseList.new(["aaa aaa", "bbbb  cccc"]).valid_count).to eq(1)
  end

end
