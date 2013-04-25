class Article < ActiveRecord::Base

	has_one :category

	validate_presence_of :title
	validate_presence_of :content

	scope :alphabetical, order('title')
	scope :active, where('active = ?', true)
end
