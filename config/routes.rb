Rails.application.routes.draw do
  get 'stones/index'
  get 'stones/show'
  get 'stones/new'
  get 'stones/create'
  get 'stones/edit'
  get 'stones/update'
  get 'stones/destroy'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
