require 'rails_helper'

RSpec.describe City do
  subject {City.new}

  it "is not valid witout a name" do
    expect(subject).not_to be_valid
  end

  # it "is not valid with a name longer than 20 symbols" do
  #   subject.name = 'a' * 20
  #   expect(subject).not_to be_valid
  # end

  it "is valid with proper data" do
    subject.name = 'a' * 5
    expect(subject).to be_valid
  end
end
