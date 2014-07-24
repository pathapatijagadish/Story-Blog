class Comment < ActiveRecord::Base
	belongs_to :story

	validates :name,:email,:story_id,:comment, :presence => true
end
