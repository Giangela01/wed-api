Rails.application.routes.draw do
  resources :guest_details
  resources :galleries
  resources :stories
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
