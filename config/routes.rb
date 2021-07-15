Rails.application.routes.draw do
  resources :authors
  resources :newarticles
  root 'pages#home'
	get 'about', to:'pages#about'
  get 'chart', to: 'articles#chart'
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
