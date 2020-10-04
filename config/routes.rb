Rails.application.routes.draw do
  resources :auths
  resources :admins
  resources :contributors
  resources :projects  do 
  resources :contributions
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
