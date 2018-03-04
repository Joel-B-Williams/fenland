Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "static#home"
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # constraints subdomain: "hooks" do
  # 	post '/:integration_name' => 'webhooks#receive'
  # end
  # pulling any post due to blanket interpolation here xD
  # post '/:integration_name', to: 'webhooks#receive'

  resources :users
end
