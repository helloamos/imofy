Rails.application.routes.draw do
  
  #devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"

  
  	#get "dashboard" => "dashboard#show"
  
scope '/admin' do
  resources :dashboard
  resources :properties
  resources :statuses
  resources :contract_types
  resources :property_types
end

resources :properties do
      get 'delete'
 end

 resources :property_types do
      get 'delete'
 end

 resources :contract_types do
      get 'delete'
 end




  devise_for :users, path: 'auth', path_names: { 
      sign_in: 'login', 
      sign_out: 'logout', 
      password: 'secret', 
      confirmation: 'verification', 
      unlock: 'unblock', 
      registration: 'register', 
      sign_up: 'cmon_let_me_in' 
    }

    Rails.application.routes.draw do
      mount Bootsy::Engine => '/bootsy', as: 'bootsy'

     

    end
end
