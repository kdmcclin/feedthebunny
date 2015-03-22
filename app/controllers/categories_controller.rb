class CategoriesController < ApplicationController
	before_action :get_category, only: :show

	def index
		@categories1 = Category.all.where(id: 1..8)
		@categories2 = Category.all.where(id: 9..16)
		@categories3 = Category.all.where(id: 17..24)
		@categories4 = Category.all.where(id: 25..33)
		
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