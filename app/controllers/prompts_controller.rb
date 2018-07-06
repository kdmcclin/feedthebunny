class PromptsController < ApplicationController
  before_action :get_prompt, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @prompt = Prompt.new
  end

  def create
    @prompt = Prompt.create(prompt_params) 

    if @prompt.save
      redirect_to prompt_path(@prompt)
    else
      flash[:error] = "Please make sure that all fields are filled out."
      render :action => "new"
    end
  end

  def edit
  end

  def update
    if @prompt.update_attributes(prompt_params)
      redirect_to prompt_path(@prompt)
    else
      flash[:error] = "Please make sure that all fields are filled out."
      render :action => "edit"
    end
  end

  def destroy
  end

  private

  def get_prompt
    @prompt = Prompt.find(params[:id])
  end

  def prompt_params
    params.require(:prompt).permit(:text, category_ids: [])
  end
end
