class WelcomeController < ApplicationController
	def index
	end

	def get_prompts
		respond_to do |format|
			format.html { redirect_to root_path }
			format.json { render :json => @one_prompt = Prompt.order("RANDOM()").first }
		end
	end
end