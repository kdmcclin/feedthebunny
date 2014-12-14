class PromptCategory < ActiveRecord::Base
	belongs_to :prompt
	belongs_to :category
end