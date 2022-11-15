Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :articles

  # show articlelist
  get '/articles', to: 'articles#index'
  # create new article
  get '/articles/new', to: 'articles#new', as: :new_article
  post '/articles', to: 'articles#create'
  # show one article's details
  get '/articles/:id', to: 'articles#show', as: :article
  # update a article
  get '/articles/:id/edit', to: 'articles#edit', as: :edit_article
  patch '/articles/:id', to: 'articles#update'
  # delete a article
  delete '/articles/:id', to: 'articles#destroy'
end
