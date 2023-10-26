Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get "/homes/about" => "homes#about", as: "about"
  resources :books, only: [:new, :create, :index, :show, :edit, :destroy]
  patch 'books/:id' => 'books#update', as: 'update_book'
  resources :users, only: [:show, :edit, :index, :update]
end
