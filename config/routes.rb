TimOcchipinti::Application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :guests, only: [:new, :create]
  resources :galleries, :has_many => :photos
  resources :photos

  root to:'pages#home'

  match '/about_tim',  	            to: 'pages#about_tim'
  match '/vision',                  to: 'pages#vision'
  match '/contribute',              to: 'pages#contribute'
  match '/media',                   to: 'pages#media'
  match '/status_reports',          to: 'pages#status_reports'
  match '/contact',		              to: 'contact_us/contacts#new'
  match '/admin',                   to: 'pages#admin'
  match '/signin',                  to: 'sessions#new'
  match '/signout',                 to: 'sessions#destroy', via: :delete




end


