class PropertiesController < ApplicationController

  before_filter :select_locations,      :only => [:new, :create, :edit, :update]
  before_filter :developers,            :only => [:new,:create,:edit,:update]
  before_filter :select_property_types, :only => [:new, :create, :edit, :update]

  def index
    @properties = Property.show_all
  end
  
  def show
    @partial  = 'information'
    @property = Property.find_by_permalink(params[:id])
  end
    
  def new
    @property = Property.new
  end
  
  def create
    @property = Property.new(params[:property])
    if @property.save
      flash[:notice] = "Successfully created property"
      redirect_to @property
    else
      flash[:error] = "Unable to created property. Please check your entries"
      render :action => 'new'
    end
  end
  
  def edit
    @property = Property.find_by_permalink(params[:id])
  end
  
  def update
    @property = Property.find_by_permalink(params[:id])
    if @property.update_attributes(params[:property])
      flash[:notice] = "Successfully updated property"
      redirect_to property_url(@property)
    else
      flash[:error] = "Unable to update property. Please check your entries"
      render :action => 'edit'
    end
  end
  
  def destroy
    @property = Property.find_by_permalink(params[:id])
    if @property.destroy
      flash[:notice] = "Successfully deleted property"
    else
      flash[:error] = "Error in deleting property"
    end
    redirect_to properties_url
  end
 
  private

  def developers
    developers = Developer.all
    @developers = developers.map{|d| [d.developer,d.id]}
  end

  def select_locations
    @locations = Location.all.collect{|a| a.area }
  end  

  def select_property_types
    @property_types = Property.property_types
  end

end
