TimOcchipinti::Application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]


  root to:'pages#home'

  match '/about_tim',  	to: 'pages#about_tim'
  match '/media',       to: 'pages#media'
  match '/contribute',  to: 'pages#contribute'
  match '/photos',      to: 'pages#photo'
  match '/gallery',     to: 'pages#gallery'
  match '/title',       to: 'pages#title'
  match '/contact',		  to: 'pages#contact'
  match '/admin',       to: 'pages#admin'

  match '/signin',      to: 'sessions#new'
  match '/signout',     to: 'sessions#destroy', via: :delete

end


