class Perspective < ActiveRecord::Base
  attr_accessible :perspective, :caption, :link

  has_attached_file :perspective, :url => "/images/perspectives/:basename.:extension", :styles => {:medium => "360x383>"}

  validates_attachment_content_type :perspective, :content_type => /\Aimage\/.*\Z/

end
