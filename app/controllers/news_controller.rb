class NewsController < ApplicationController

  def index
    @news = News.all
    render :layout => "application"
  end

  def show
    @news = News.find_by_permalink(params[:id])
    render :layout => "application"
  end

  def new
    @news = News.new
  end

  def create
    @news = News.new(params[:news])    
    if @news.save
      flash[:notice] = "Successfully created news"
      redirect_to news_index_url
    else
      flash[:error] = "Unable to create news. Please check your entries"
      render :action => 'new'
    end
  end

  def edit
    @news = News.find_by_permalink(params[:id])
  end

  def update
    @news = News.find_by_permalink(params[:id])
    if @news.update_attributes(params[:news])
      flash[:notice] = "Successfully updated news"
      redirect_to news_index_url
    else
      flash[:error] = "Unable to update news. Please check your entries"
      render :action => 'edit'
    end
  end

  def delete
    @news = News.find_by_permalink(params[:id])
    if @news.destroy
      flash[:notice] = "Successfully deleted news"
    else
      flash[:error] = "Error in deleting news"
    end
    redirect_to news_index_url
  end
end
