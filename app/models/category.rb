class Category < ActiveRecord::Base
	has_many :prompts, through: :prompt_categories
end