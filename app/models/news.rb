class News < ActiveRecord::Base
   attr_accessible :title, :permalink, :teaser, :body, :featured, :created_by, :photo, :photo_caption, :published_date, :published_at

  has_attached_file :photo, :url => "/:class/:attachment/:id/:style_:basename.:extension"
  
  validates :title,     :presence => true
  validates :permalink, :presence => true
  validates :body,      :presence => true
  validates :permalink, :uniqueness => true
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  def self.featured_articles
    News.all	
  end

  def to_param
    permalink
  end
end
