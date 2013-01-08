TimOcchipinti::Application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :guests, only: [:new, :create]
  resources :galleries, :has_many => :photos
  resources :photos, only: [:new, :create, :destroy]

  root to:'pages#home'

  match '/about_tim',  	            to: 'pages#about_tim'
  match '/media',                   to: 'pages#media'
  match '/contribute',              to: 'pages#contribute'
  match '/photos',                  to: 'pages#photo'
  match '/title',                   to: 'pages#title'
  match '/contact',		              to: 'contact_us/contacts#new'
  match '/admin',                   to: 'pages#admin'
  match '/signin',                  to: 'sessions#new'
  match '/signout',                 to: 'sessions#destroy', via: :delete




end


