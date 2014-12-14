class Prompt < ActiveRecord::Base
	has many :categories, through: :prompt_categories
end