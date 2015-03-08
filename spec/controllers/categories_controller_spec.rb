require 'rails_helper'

describe CategoriesController do
	render_views
	
	let!(:category) {Category.create(label: "Historical", description: "This category involves prompts that have a basis in history.")}
	let!(:category_2) {Category.create(label: "Pirates", description: "This category involves all things pirates.  Arrrrrrrrr!")}
	let!(:prompt) {Prompt.create(text: "All of the history happened.  All of it.")}
	let!(:pc) {PromptCategory.create(prompt_id: prompt.id, category_id: category.id)}

	describe 'GET #index' do
		it "assigns all categories as @categories" do
			get :index
			expect(assigns(:categories)).to match_array([category, category_2])
		end

		it "renders the :index template" do
			get :index
			expect(response).to render_template :index
		end
	end

	describe 'GET #show' do
		it "assigns the correct category to @category" do
			get :show, id: category
			expect(assigns(:category)).to eq category
		end

		it "renders the :show template" do
			get :show, id: category
			expect(response).to render_template :show
		end
	end

	describe 'GET #get_category_prompts' do

		it "responds with JSON" do
			get :get_category_prompts, :category_id => category.id, :format => :json
			expect(response.content_type).to eq("application/json")
		end

		it "sends back a response that contains valid text" do
			get :get_category_prompts, :category_id => category.id, :format => :json
			parsed_body = JSON.parse(response.body)
			expect(parsed_body["text"]).to eq(prompt.text)
		end
	end
end