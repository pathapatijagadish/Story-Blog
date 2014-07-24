class ImagesController < ApplicationController
  def index
  	@stories=Story.includes(:images).order("rand()")#.mysql
  	#@stories=Story.includes(:images).order("random()")#.postgresql
  end
end
