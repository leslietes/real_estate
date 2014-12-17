class Property < ActiveRecord::Base
  attr_accessible :developer_id, :name, :permalink, :address, :location, :description
  attr_accessible :completed,    :target_completion_date
  attr_accessible :unit_types, :studio, :one_bedroom, :two_bedroom, :three_bedroom, :penthouse, :loft
  attr_accessible :unit_sizes, :studio_size, :one_bedroom_size, :two_bedroom_size, :three_bedroom_size, :penthouse_size, :loft_size
  attr_accessible :price_range, :studio_price, :one_bedroom_price, :two_bedroom_price, :three_bedroom_price, :penthouse_price, :loft_price
  attr_accessible :studio_monthly, :one_bedroom_monthly, :two_bedroom_monthly, :three_bedroom_monthly, :penthouse_monthly, :loft_monthly
  attr_accessible :amenities, :features, :unit_specifications, :payment_terms, :as_low_as, :as_low_as_label
  attr_accessible :reservation_fee, :property_type, :featured, :hidden
  attr_accessible :latitude, :longitude, :no_of_floors, :no_of_bldgs, :no_of_units, :sold_out, :preselling
  attr_accessible :photo, :logo, :location_map, :studio_layout, :one_bedroom_layout, :two_bedroom_layout, :three_bedroom_layout, :penthouse_layout, :loft_layout
  attr_accessible :studio_layout_caption, :one_bedroom_layout_caption, :two_bedroom_layout_caption, :three_bedroom_layout_caption, :penthouse_layout_caption, :loft_layout_caption

  has_attached_file :photo, :styles => { :medium => "335x525>", :thumb => "85x122>", :small => "120x145>" },
                    :url => "/:class/:attachment/:id/:style_:basename.:extension"

  has_attached_file :logo, :styles => { :medium => "335x525>" },
                    :url => "/:class/:attachment/:id/:style_:basename.:extension"

  has_attached_file :location_map, :styles => { :medium => "335x525>" },
                    :url => "/:class/:attachment/:id/:style_:basename.:extension"

  has_attached_file :studio_layout, :styles => { :medium => "335x525>" },
                    :url => "/:class/:attachment/:id/:style_:basename.:extension"

  has_attached_file :one_bedroom_layout, :styles => { :medium => "335x525>" },
                    :url => "/:class/:attachment/:id/:style_:basename.:extension"

  has_attached_file :two_bedroom_layout, :styles => { :medium => "335x525>" },
                    :url => "/:class/:attachment/:id/:style_:basename.:extension"

  has_attached_file :three_bedroom_layout, :styles => { :medium => "335x525>" },
                    :url => "/:class/:attachment/:id/:style_:basename.:extension"

  has_attached_file :penthouse_layout, :styles => { :medium => "335x525>" },
                    :url => "/:class/:attachment/:id/:style_:basename.:extension"
 
  has_attached_file :loft_layout, :styles => { :medium => "335x525>" },
                    :url => "/:class/:attachment/:id/:style_:basename.:extension"

  belongs_to :developer
  
  validates :developer_id, :presence => true
  validates :name,         :presence => true
  validates :permalink,    :presence => true, :uniqueness => true
  
  validates_attachment_content_type :photo,                :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :logo,                 :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :location_map,         :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :studio_layout,        :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :one_bedroom_layout,   :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :two_bedroom_layout,   :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :three_bedroom_layout, :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :penthouse_layout,     :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :loft_layout,          :content_type => /\Aimage\/.*\Z/



  def self.property_types
    [[''],['Condominium'],['Condotel']]
  end

  def self.show_all
    Property.where("hidden = ?", false).select("name, permalink, location, target_completion_date, developer_id, completed, 
                  studio, one_bedroom, two_bedroom, three_bedroom, penthouse, loft, 
                  studio_size, one_bedroom_size, two_bedroom_size, three_bedroom_size, penthouse_size, loft_size, 
                  studio_price, one_bedroom_price, two_bedroom_price, three_bedroom_price, penthouse_price, loft_price,
                  studio_monthly, one_bedroom_monthly, two_bedroom_monthly, three_bedroom_monthly, penthouse_monthly, loft_monthly, hidden, featured, sold_out,   preselling, latitude, longitude").order("name ASC").includes(:developer)
  end

  def self.show_all_visible

  end

  def to_param
    permalink
  end

  def developer_name
    developer.blank? ? "" : developer.developer
  end

  def all_unit_info
    types = []
    types << ['Studio',   "#{self.studio_price}",       "#{self.studio_size}", "#{view_layout_link('studio')}"]      if self.studio?
    types << ['1 Bedroom',"#{self.one_bedroom_price}",  "#{self.one_bedroom_size}", "#{view_layout_link('one_bedroom')}"] if self.one_bedroom?
    types << ['2 Bedroom',"#{self.two_bedroom_price}",  "#{self.two_bedroom_size}", "#{view_layout_link('two_bedroom')}"] if self.two_bedroom?
    types << ['3 Bedroom',"#{self.three_bedroom_price}","#{self.three_bedroom_size}","#{view_layout_link('three_bedroom')}"] if self.three_bedroom?
    types << ['Penthouse',"#{self.penthouse_price}",    "#{self.penthouse_size}", "#{view_layout_link('penthouse')}"] if self.penthouse?
    types << ['Loft',     "#{self.loft_price}",         "#{self.loft_size}", "#{view_layout_link('loft')}"]      if self.loft?
    types
  end
  

  def has_tagline?
    !as_low_as.blank?
  end

  def has_payment_terms?
    !payment_terms.blank?
  end
  
  def has_address?
    !address.blank?
  end

  def has_target_completion_date?
    !target_completion_date.blank?
  end

  def has_amenities? 
    !amenities.blank?
  end

  def has_unit_specifications?
    !unit_specifications.blank?
  end

  def has_reservation_fee?
    !reservation_fee.blank?
  end
end
