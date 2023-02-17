Rails.application.routes.draw do
  # get 'gossips/index'
  # get 'gossips/show'
  # get 'gossips/new'
  # get 'gossips/create'
  # get 'index/show'
  # get 'index/new'
  # get 'index/create'
  root 'gossips#index' # à la place de 'index#index'
    get "sign_up", to:"registrations#new"
  post "sign_up", to: "registrations#create"
  
  resources :gossips 
  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end


# get 'show/show'  # incomplet
# root 'index#index'
# get '/team', to: 'team#team_method'
# get '/contact', to: 'contact#contact_method'
# get '/welcome/:id', to: 'welcome#first_name'
# get '/welcome', to: 'welcome#display_welcome'
# get '/show/:gossip_id', to: 'show#show' 
