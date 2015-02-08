require 'rails_helper'



describe Beer do
  it "is saved if it has name and style" do
  	beer = Beer.create name:"Päivi", style: "IPA"

  	expect(beer).to be_valid
    expect(Beer.count).to eq(1)
  end
  it "is not saved if it has no name" do
  	beer = Beer.create style: "IPA"
  	expect(beer).to_not be_valid
  	expect(Beer.count).to eq(0)
  end
  it "is not saved if it has no style" do
  	beer = Beer.create name: "Piper Wit"
  	expect(beer).to_not be_valid
  	expect(Beer.count).to eq(0)
  end
end
