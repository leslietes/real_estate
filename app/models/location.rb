class Location < ActiveRecord::Base
  attr_accessible :area

  validates_uniqueness_of :area
end
