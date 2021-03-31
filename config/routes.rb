Rails.application.routes.draw do
  root 'welcome#index'
  get '/thewedding', to: 'welcome#wedding'
  get '/thegallery', to: 'welcome#gallery'
end
