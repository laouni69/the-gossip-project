Rails.application.routes.draw do
  
    root 'gossips#index', as: 'index'
    
    resources :gossips    

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
