class CategoriesController < ApplicationController
	before_action :get_category, only: :show

	def index
		@categories1 = Category.all.where(id: 1..9)
		@categories2 = Category.all.where(id: 10..17)
		@categories3 = Category.all.where(id: 18..25)
		@categories4 = Category.all.where(id: 26..34)
		
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