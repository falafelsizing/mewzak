require 'spec_helper'

describe Artist do
  
  it "requires a name" do
    subject.should_not be_valid
    subject.name = "Scott"
    subject.should be_valid
  end
  
end
