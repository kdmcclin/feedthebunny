class PromptsController < ApplicationController
  before_action :get_prompt, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
    #show prompt after creation to check that it's okay
  end

  def new
    @prompt = Prompt.new
    @prompt.prompt_categories.build
  end

  def create
    @prompt = Prompt.create(prompt_params) 

    if @prompt.save
      redirect_to new_prompt_path
    else
      flash[:error] = "Please make sure that all fields are filled out."
      render :action => "new"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def get_prompt
    @prompt = Prompt.find(params[:id])
  end

  def prompt_params
    params.require(:prompt).permit(:text, prompt_categories_attributes: {:category_id => [:id, :_destroy]})
  end
end
