class Developer < ActiveRecord::Base
  attr_accessible :developer, :permalink, :description, :hidden
  attr_accessible :image

  has_attached_file :image, :styles => { :medium => "155x165>"},
                    :url => "/:class/:attachment/:id/:style_:basename.:extension"

  validates_presence_of   :developer, :permalink
  validates_uniqueness_of :permalink
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  
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
