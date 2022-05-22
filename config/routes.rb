Rails.application.routes.draw do
  get 'lists/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'lists#index'
  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: :create
  end
  resources :bookmarks, only: :destroy
end
