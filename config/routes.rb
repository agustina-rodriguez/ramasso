Rails.application.routes.draw do
  devise_for :users
  resources :talk_speakers
  resources :speakers
  resources :talks
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'administrators', to: 'administrators#index'
  get 'toggle_admin', to: 'administrators#toggle_admin'

  root'events#index'
end
