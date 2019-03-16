# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: {
		registrations: :registrations,
		confirmations: :confirmations
  }
  root controller: :articles, action: :index
  resources :articles, only: %i[index show]
  resources :subscriptions, only: [:create]
end