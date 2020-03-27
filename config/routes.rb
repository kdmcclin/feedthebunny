Rails.application.routes.draw do
  resources :categories

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  get '/get_prompts' => 'welcome#get_prompts'

  get '/get_category_prompts' => 'categories#get_category_prompts'

  resources :prompts
end
