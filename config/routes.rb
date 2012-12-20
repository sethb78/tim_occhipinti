TimOcchipinti::Application.routes.draw do

  root to:'pages#home'

  match '/about_tim',  	to: 'pages#abouttim'
  match '/media',       to: 'pages#media'
  match '/contribute',  to: 'pages#contribute'
  match '/photos',      to: 'pages#photo'
  match '/gallery',     to: 'pages#gallery'
  match '/title',       to: 'pages#title'
  match '/contact',		to: 'pages#contact'


end


