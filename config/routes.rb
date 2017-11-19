Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  
  
   get "/"=> "index#index"
   get "/tous" => "index#tous"
   get "/effacer/:id" =>"index#effacer_inscription"
  
  
  resources :index
  
  
  
  
  
  
  
end


