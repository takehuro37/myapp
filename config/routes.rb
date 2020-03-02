Rails.application.routes.draw do
  devise_for :users
  root to: "toppage#index" 
  resources :toppage, only: [:index, :show ] do
    resources :shops, only: [:index ]
  end
end
