class Article < ApplicationRecord
    validates :title, presence: true, length: { minimum: 5}
		validates :content, presence: true, length: { minimum: 10}
		validates :category, presence: true
		belongs_to :category
end
