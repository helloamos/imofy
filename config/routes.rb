Rails.application.routes.draw do
  
  
    
  resources :inquiry_mails
    #devise_for :users
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
    # Home route.
    root to: "home#index"

    # Named routes.
    get "/home" => "home#index"
    get "/landing" => "pages#landing_page", as: :landing_page
    get "/suscribe" => "pages#newsletter_suscribe", as: :suscribe
    get "/property/:id" => "properties#show", as: :property_show
    get "/search" => "searches#simple_search", as: :simple_search
    get "/cgu" => "pages#cgu", as: :cgu
    get "/contact" => "pages#contact", as: :contact
    get "/advertise" => "pages#advertise", as: :advertise
    get "/blog"  => "pages#blog", as: :blog
    get "/faq" => "pages#faq", as: :faq
    get "/provacy-policy" => "pages#privacy_policy", as: :privacy_policy
    get "/partnaires" => "pages#partnaires", as: :partnaires
    get "/services" => "pages#services", as: :services
    get '/inquiry_email' => 'contact_email#inquiry', as: :inquiry_email


  
    # Admin routes.
    scope '/admin' do
      resources :dashboard
      resources :properties
      resources :statuses
      resources :contract_types
      resources :property_types
      resources :unities
    end

    # Delete routes.
    resources :properties do
          get 'delete'
     end
     resources :unities do
          get 'delete'
     end

     resources :property_types do
          get 'delete'
     end

     resources :contract_types do
          get 'delete'
     end



    # Devise routes.

   



    devise_for :users, path: '', controllers: { 
     registrations: "devise/registrations",
     confirmations: 'devise/confirmations',
     passwords: "devise/passwords",
     sessions: "devise/sessions"
         
     }, 
     path_names: {
         sign_in: 'login', 
         sign_out: 'logout', 
         password: 'secret', 
         confirmation: 'verification', 
         unlock: 'unblock', 
         registration: 'signup', 
         sign_up: '' 
     }

  
    

    resources :messages
    resources :suscribers
    resources :unities

    # Bootsy edito routes.
    mount Bootsy::Engine => '/bootsy', as: 'bootsy'

     

    
end
