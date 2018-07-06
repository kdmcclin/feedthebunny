class Prompt < ActiveRecord::Base
	has_many :prompt_categories
	has_many :categories, through: :prompt_categories

  accepts_nested_attributes_for :prompt_categories, allow_destroy: true

  validates :text, presence: true
  #lookup validations on nested attributes
end