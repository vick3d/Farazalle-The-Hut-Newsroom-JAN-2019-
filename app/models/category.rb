class Category < ApplicationRecord
	has_many :articles
	valid_categories = [
		'sports',
		'entertainment',
		'local',
		'global',
		'tech',
		'politics'
	]
	validates_inclusion_of :name, in: valid_categories
	validates :name, presence: true
	validates_uniqueness_of :name
end
