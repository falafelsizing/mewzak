require 'spec_helper'

describe "Mixtapes" do
  it "makes an mixtape" do
    visit mixtapes_path
    click_link "New"
    click_button "Create Mixtape"
    
    page.should have_content("can't be blank")
  end
end
