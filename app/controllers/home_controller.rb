class HomeController < ApplicationController
  def index  	
  	if params[:keyword].present?
  		@stories = Story.where("title LIKE ? OR content LIKE ? OR author LIKE ?","%#{params[:keyword]}%","%#{params[:keyword]}%","%#{params[:keyword]}%").paginate(:page=>params[:page]).order("created_at DESC")	
  	else  		
  		@stories = Story.paginate(:page=>params[:page]).order("created_at DESC")
  	end
  	render :template=>"stories/index"
  end

  def about_us
  	
  end
end
