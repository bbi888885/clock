Rails.application.routes.draw do
  root 'themes#index'
  resources :themes, only: [:index, :create, :new] do
    resources :start_times, only: :create
    resources :stop_times, only: :create
  end 
end
