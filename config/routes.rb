Rails.application.routes.draw do
  root 'home#index'

  get '/home', to: 'home#index', defaults: { style: 'dark' }
  get '/home/:style', to: 'home#index', constraints: { style: /dark|vapo|sketchy/ }, as: 'styled_home'
end
