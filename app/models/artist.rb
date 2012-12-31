class Artist < ActiveRecord::Base
  attr_accessible :name

  has_many :mixtapes
  
  validates :name, :presence => true
  validates :name, :uniqueness => { :case_sensitive => false }
end
