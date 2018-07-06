class PromptCategory < ActiveRecord::Base
	belongs_to :prompt
	belongs_to :category

  accepts_nested_attributes_for :category, allow_destroy: true
end