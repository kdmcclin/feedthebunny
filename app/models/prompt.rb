class Prompt < ActiveRecord::Base
	has_many :prompt_categories
	has_many :categories, through: :prompt_categories
end