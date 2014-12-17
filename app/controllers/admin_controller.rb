class AdminController < ApplicationController

  def settings
    @locations= Location.order(:area)
    @setting  = Setting.first
  end

  def edit_settings
    setting = Setting.first || Setting.new
    setting.update_attributes(params[:setting])
  
    if setting.save
      flash[:notice] = "Updated site settings"
    else
      flash[:error] = "Unable to update site settings"
    end
    redirect_to settings_url
  end

  def add_location
    location = Location.new(:area => params[:location])
    if location.save
      flash[:notice] = 'Successfully added location'
    else
      flash[:notice] = "Unable to add new location"
    end
    redirect_to settings_url
  end
  
  def remove_location
    if Location.exists?(params[:id])
      if Location.delete(params[:id])
        flash[:notice] = "Successfully deleted location"
      else
        flash[:error] = "Unable to delete location"
      end
    end
    redirect_to settings_url
  end
end
