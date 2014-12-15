class Prompt < ActiveRecord::Base
	has_many :categories, through: :prompt_categories
end