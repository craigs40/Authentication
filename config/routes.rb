Rails.application.routes.draw do
  get 'posts/new'
  devise_for :posts
  devise_for :users
  root to: 'home#index'
end
