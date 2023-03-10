Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get "homes/about"=>"homes#about"
  resources :users, only: [:show,:edit, :update]
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resources :post_comments, only: [:create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
