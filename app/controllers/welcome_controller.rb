class WelcomeController < ApplicationController
	def index
	end

	def get_prompts
		@one_prompt = Prompt.order("RANDOM()").first
		# @two_prompts = Prompt.all.sample(2)
		# @three_prompts = Prompt.all.sample(3)
	end
end