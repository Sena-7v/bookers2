Rails.application.routes.draw do
  root to:"homes#top"
  get "homes/about" => "homes#about", as:"about"
  devise_for :users
  resources :books, only:[:index, :create, :show, :edit]
  resources :users, only:[:show, :edit]
end
