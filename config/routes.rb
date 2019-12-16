Rails.application.routes.draw do
  get '/articles/:id/show', to: 'articles#show', as: 'article'
  post '/articles', to: 'articles#create'
  root to: 'articles#new'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/contact', to: 'contact#new'
  post '/contact', to: 'contact#create'

end