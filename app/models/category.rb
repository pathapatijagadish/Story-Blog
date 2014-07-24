class Category < ActiveRecord::Base
	extend FriendlyId
  friendly_id :name, use: [:slugged, :history,:finders]
	has_many :stories , dependent: :destroy
	validates :name, :presence => true, :uniqueness => true, :length => { :minimum => 3 }
end
