class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :retrieve_objects
  
  def retrieve_objects
    #@featured_articles = Article.featured_articles
    # for search box
    @search_location = Location.all.collect{|a| a.area }.sort.insert(0,"")
    @search_price    = PriceRange.show_all.insert(0,"")
    @search_type     = Setting.unit_types.insert(0,"")
    @type            = Property.property_types #condominium/condotel
  end
end
