class Category < ActiveRecord::Base
	has_many :prompt_categories
	has_many :prompts, through: :prompt_categories
end