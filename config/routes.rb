Rails.application.routes.draw do
  resources :logs
  resources :users
  get "/:page" => "static#show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
end
