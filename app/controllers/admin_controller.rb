class AdminController < ApplicationController

  def settings
    @locations= Location.order(:area)
    @setting  = Setting.first
    @perspectives = Perspective.all
    @perspective  = Perspective.new
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

  def add_perspective
    perspective = Perspective.new(params[:perspective])
    if perspective.save
      flash[:notice] = "Successfully added building perspective"
    else
      flash[:error] = "Unable to add building perspective"
    end
    redirect_to settings_url
  end

  def remove_perspective
    if Perspective.exists?(params[:id])
      if Perspective.delete(params[:id])
        flash[:notice] = "Successfully deleted"
      else
        flash[:error] = "Unable to delete deleted"
      end
    end
    redirect_to settings_url
  end
end
