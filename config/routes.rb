Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#top'
  resources :companies, only: [:index,:show, :new, :create,:destroy] do
   resources :comments, only: :create
  end
  resources :applications, only: [:index,:new,:show,:create,:edit,:update,:destroy]
end
