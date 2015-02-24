class WelcomeController < ApplicationController
	def index
	end

	def get_prompts
		respond_to do |format|
			format.html { redirect_to root_path }
			format.json { render :json => Prompt.order("RANDOM()").first }
		end
	end
end