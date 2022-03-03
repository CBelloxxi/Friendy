Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  get 'dashboard', to: 'pages#index', as: 'dashboard'
  get 'impact', to: 'pages#impact', as: 'impact'
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :donees do
    resources :donations, only: %i[new create show]
    resources :reports, only: %i[new create]
  end
  resources :reports, only: %i[show]

  resources :donations, only: %i[show]


  resources :orders, only: %i[show create] do
    resources :payments, only: %i[new]
  end
end
