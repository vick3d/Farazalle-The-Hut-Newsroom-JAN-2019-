Rails.application.routes.draw do
  devise_for :users
	root controller: :articles, action: :index
	resources :articles, only: [:index, :show]
	resources :subscriptions, only: [:create]
end
