class Story < ActiveRecord::Base	
	belongs_to :category
	has_many :images
	has_many :comments , dependent: :destroy
	accepts_nested_attributes_for :images, :allow_destroy => true
	self.per_page = 2
	extend FriendlyId
  friendly_id :title, use: [:slugged, :history,:finders]

  default_scope -> {includes(:comments)}
  scope :popular, -> { order(story_views: :desc) }
  scope :filter_by_category, ->(category) { where("category_id = ?", category) }
  scope :filter_by_month,	->(month) {where("MONTH(created_at) = ? ",month).order("created_at DESC")}  

  validates :title,:content, :presence => true
end