class PriceRange < ActiveRecord::Base
  attr_accessible :range, :value_from, :value_to

  def self.show_all
    price_range = []
    all.sort_by{|p| p.value_from }.collect{|p| price_range << [ p.range, p.id]}
    price_range
  end
end
