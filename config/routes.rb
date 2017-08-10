Rails.application.routes.draw do
   
 
  
  resources :videos
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, :controllers => { omniauth_callbacks: "users/omniauth_callbacks" }
  #as :user do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   #get 'sign_in' => 'users/sessions#new', :as => "sign_in"
   #get 'sign_up' => 'users/registrations#new', :as => "sign_up"  
   #get 'sign_out' => 'users/sessions#destroy', :as => "sign_out" 
   get 'home/index'
   root 'home#index' 
   root to: "photos#index"
   root "videos#index"
   resources :photos
end
