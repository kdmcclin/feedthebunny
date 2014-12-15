class WelcomeController < ApplicationController
	def index
	end

	def get_prompts
		@one_prompt = Prompt.all.sample
		# @two_prompts = Prompt.all.sample(2)
		# @three_prompts = Prompt.all.sample(3)
	end
end