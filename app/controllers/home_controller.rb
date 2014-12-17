class HomeController < ApplicationController

  def index
    @class = 'home'
    @properties = Property.show_all_featured
    @setting    = Setting.first
    @perspectives = Perspective.all
  end
end
