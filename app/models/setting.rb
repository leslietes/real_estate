class Setting < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :production_email, :about_us, :introduction, :intro_price, :link, :bcc
  attr_accessible :featured1, :featured2, :featured3, :featured4, :featured5, :sidebar
  attr_accessible :featured1_caption, :featured1_link
  attr_accessible :featured2_caption, :featured2_link
  attr_accessible :featured3_caption, :featured3_link
  attr_accessible :featured4_caption, :featured4_link
  attr_accessible :featured5_caption, :featured5_link
  attr_accessible :sidebar_caption,   :sidebar_link

  has_attached_file :featured1, :url => "/images/featured/:basename.:extension", :styles => {:medium => "612x275>"}
  has_attached_file :featured2, :url => "/images/featured/:basename.:extension", :styles => {:medium => "612x275>"}
  has_attached_file :featured3, :url => "/images/featured/:basename.:extension", :styles => {:medium => "612x275>"}
  has_attached_file :featured4, :url => "/images/featured/:basename.:extension", :styles => {:medium => "612x275>"}
  has_attached_file :featured5, :url => "/images/featured/:basename.:extension", :styles => {:medium => "612x275>"}
  has_attached_file :sidebar,   :url => "/images/sidebar/:basename.:extension",  :styles => {:medium => "290x295>"}

  validates :production_email, :presence => true
  validates_attachment_content_type :featured1, :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :featured2, :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :featured3, :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :featured4, :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :featured5, :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :sidebar, :content_type => /\Aimage\/.*\Z/

  def self.unit_types
    [['Studio','studio'],['1 Bedroom','one_bedroom'],['2 Bedroom', 'two_bedroom'],['3 Bedroom','three_bedroom'],['Loft', 'loft'],['Penthouse','penthouse']]
  end

end
