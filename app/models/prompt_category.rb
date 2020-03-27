class PromptCategory < ApplicationRecord
	belongs_to :prompt
	belongs_to :category
end