Rails.application.routes.draw do
  devise_for :users, path: :secure
  get "/up", to: "rails/health#show", as: :rails_health_check

  get "/home", to: "pages#home"
  get "/about", to: "pages#about"

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  root "pages#home"
end
