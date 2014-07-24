class Image < ActiveRecord::Base
	belongs_to :story
	has_attached_file :image, :styles => { :medium => "460x180#", :thumb => "70x60#" }, :default_url => "/images/:style/missing.png"
	validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
	self.per_page = 2
end
