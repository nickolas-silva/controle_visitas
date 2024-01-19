Rails.application.routes.draw do
  resources :secretaries
  namespace :site do
    get 'welcome/index'
  end
  namespace :attendants_backoffice do
    get 'welcome/index'
  end
  namespace :employees_backoffice do
    get 'welcome/index'
  end
  namespace :admins_backoffice do
    get 'welcome/index'
  end
  devise_for :attendants
  devise_for :employees
  devise_for :admins

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'site/welcome#index'
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
