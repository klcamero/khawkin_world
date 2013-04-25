class Article < ActiveRecord::Base
 has_one :category

 validates_presence_of :title
 validates_presence_of :content

 scope :alpabetical, order('title')
 scope :active, where('active =?', true)
end
