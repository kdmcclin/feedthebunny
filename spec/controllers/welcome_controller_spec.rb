require 'rails_helper'

describe WelcomeController do
	render_views

	let!(:prompt) {Prompt.create(text: "All of the history happened.  All of it.")}
	
	describe 'GET #index' do
		it 'renders the homepage' do
			get :index
			expect(response).to render_template :index
		end
	end

	describe 'GET #get_prompts' do
		it 'responds with JSON' do
			get :get_prompts, :format => :json
			expect(response.content_type).to eq("application/json")
		end

		it 'sends back a response that contains valid text' do
			get :get_prompts, :format => :json
			parsed_body = JSON.parse(response.body)
			expect(parsed_body["text"]).to eq(prompt.text)
		end
	end
end