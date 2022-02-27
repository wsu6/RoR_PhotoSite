#Rails.application.routes.draw do
HW2::Application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #match ':controller(/:action(/:id))(.:format)'
  get 'say/hello' => 'say#hello'
  get 'users/index' => 'users#users'
  get 'photos/index' => 'photos#photos'
  get 'photos/index/:id' => 'photos#show'
  get 'users/index/:id' => 'users#show'
  resources :users do
    resources :users, only: :users
    #-> url.com/users/:user_id/recruiters
  end
end
