Rails.application.routes.draw do
  get 'employees/index'
	devise_for :users

	root controller: :articles, action: :index
	resources :articles, only: [:index, :show]
end
