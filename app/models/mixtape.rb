class Mixtape < ActiveRecord::Base
  attr_accessible :dateAdded, :downloads, :link, :name, :artist, :artist_id

  belongs_to :artist
  
  validates :link, :name, :presence => true
  validates :link, :name, :uniqueness => { :case_sensitive => false }
  
  scope :sorted, order('downloads desc')
  
  def url_with_protocol(url)
    /^http/.match(url) ? url : "http://#{url}"
  end
  
end
