class CategoriesController < ApplicationController
	before_action :get_category, only: :show

	def index
		@alpha_cat = Category.order('lower(label) ASC')
		@categories1 = @alpha_cat[0..8]
		@categories2 = @alpha_cat[9..17]
		@categories3 = @alpha_cat[18..26]
		@categories4 = @alpha_cat[27..34]
		
		@categories = Category.all
	end

	def show
	end

	def get_category_prompts
		@category = Category.find(params[:category_id])
		respond_to do |format|
			format.html { redirect_to category_path(@category) }
			format.json { render :json => @category.prompts.order("RANDOM()").first }
		end
	end

	private
	def get_category
		@category = Category.find(params[:id])
	end
end