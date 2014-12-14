class Category < ActiveRecord::Base
	has many :prompts, through: :prompt_categories
end