class Prompt < ApplicationRecord
	has_many :prompt_categories, dependent: :destroy
	has_many :categories, through: :prompt_categories

  validates :text, presence: true
end