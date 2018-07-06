class Category < ActiveRecord::Base
	has_many :prompt_categories
	has_many :prompts, through: :prompt_categories

  accepts_nested_attributes_for :prompt_categories, allow_destroy: true
end