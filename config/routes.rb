Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  constraints format: :html do
    ActiveAdmin.routes(self)
  end
  # root to: 'visitors#index'
  root to: 'test12/dashboard#index'
  devise_for :users, :controllers => { :registrations => "registrations", :sessions => "sessions" }
  resources :users
  resources :visitors
  get '/records/history', to: 'records#history', as: :records_history
  resources :records
end
