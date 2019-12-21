Rails.application.routes.draw do
  resources :logs
  resources :users
  #get "/:page" => "static#show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'accounts#new'

  get 'accounts/new' => 'accounts#new', as: :new_account

   # create (post) action for when sign up form is submitted:
   post 'accounts' => 'accounts#create'

   # log in page with form:
      get '/login'     => 'sessions#new'

      # create (post) action for when log in form is submitted:
      post '/login'    => 'sessions#create'

      # delete action to log out:
      delete '/logout' => 'sessions#destroy'

end
