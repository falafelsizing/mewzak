require 'spec_helper'

describe Mixtape do
  it "requires a name and a link" do
    subject.should_not be_valid
    subject.name = "a tape"
    subject.should_not be_valid
    subject.link = "a link"
    subject.should be_valid
  end
end
