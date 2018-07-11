class CategoriesController < ApplicationController
	before_action :authenticate, only: [:new, :create, :edit, :update, :destroy]
	before_action :get_category, only: [:show, :edit, :update, :destroy]

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

	def new
		@category = Category.new
	end

	def create
		@category = Category.create(category_params)

    if @category.save
      redirect_to category_path(@category)
    else
      flash[:error] = "Please make sure that all fields are filled out."
      render :action => "new"
    end
	end

	def edit
	end

	def update
		if @category.update_attributes(category_params)
      redirect_to category_path(@category)
    else
      flash[:error] = "Please make sure that all fields are filled out."
      render :action => "edit"
    end
	end

	def destroy
		@category.destroy
    redirect_to new_category_path
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

	def category_params
    params.require(:category).permit(:label, :description)
	end
end
