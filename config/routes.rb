#Rails.application.routes.draw do
HW2::Application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #match ':controller(/:action(/:id))(.:format)'
  get 'say/hello' => 'say#hello'
  get 'users/index' => 'users#users'
  get 'photos/index' => 'photos#photos'
  resources :photos do
    resources :photos, only: :photos
    #-> url.com/users/:user_id/recruiters
  end
end
