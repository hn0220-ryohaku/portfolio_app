Rails.application.routes.draw do
  resources :mitsumoris
  get 'users/show' => "users#show"
  devise_for :users, controllers: { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
  root to: "home#index"
  
  root to: "registrations#edit"
end
