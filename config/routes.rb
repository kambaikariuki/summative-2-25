Rails.application.routes.draw do
  resources :artist_profiles, except: [ :index ]
  resources :artist_portfolios, except: [ :index ]
  resources :artworks
  resources :artists
  resources :about, only: [ :index ]
  devise_for :users do
    get "users/sign_out" => "devise/sessions#destroy"
  end
  namespace :admin do
    resources :dashboard
  end
  get "404" => "errors#not_found", as: :not_found
  # get "home/index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  root "home#index"
end
