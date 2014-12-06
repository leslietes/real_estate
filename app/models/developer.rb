class Developer < ActiveRecord::Base
  attr_accessible :developer, :permalink, :description, :hidden

  validates_presence_of   :developer, :permalink
  validates_uniqueness_of :permalink
  
  # including hidden
  def self.show_all
   Developer.order("developer ASC") 
  end
  
  # not including hidden
  def self.show_all_visible
    Developer.where("hidden = ?", false).order("developer ASC")
  end
  
  def to_param
    permalink
  end
end
