TimOcchipinti::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :contributions, only: [:new, :create, :check]
  resources :blogs, only: [:show, :index]
  resources :news_articles, :only => :index

  resources :sessions, only: [:new, :create, :destroy]
  resources :guests, only: [:new, :create]
  resources :galleries, :has_many => :photos
  resources :photos

  # root to:'pages#home'

  match '/about_tim',  	            to: 'pages#about_tim'
  match '/vision',                  to: 'pages#vision'
  match '/contribute',              to: 'contributions#new'
  match '/contribute/check',        to: 'contributions#check'
  match '/media',                   to: 'pages#media'
  match '/mediablog',                   to: 'pages#media'
  match '/status_reports',          to: 'pages#status_reports'
  match '/contact',		              to: 'contact_us/contacts#new'
  match '/admin',                   to: 'pages#admin'
  match '/signin',                  to: 'sessions#new'
  match '/signout',                 to: 'sessions#destroy', via: :delete




end


