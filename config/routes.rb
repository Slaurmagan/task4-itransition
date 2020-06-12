Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'registrations'}
  root to: 'public#index'
  post '/block' => "public#block"
  post '/delete_users' => 'public#delete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
	