require 'spec_helper'

describe "Artists" do
  it "makes an artist" do
    visit artists_path
    click_link "New"
    click_button "Create Artist"
    
    page.should have_content("can't be blank")
  end
end
