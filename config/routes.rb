Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # root page is linked to articles controller, index action
  root "articles#index"

  # Resourceful routing takes care of the 7 RESTful actions in one and sets up URL helpers for each
  resources :articles

  # /articles page is linked to articles controller, index action (both this and root are the same)
  # get "/articles", to: "articles#index"

  # /articles/:id linked to articles controller, show action. The :id is passed to controller via params.
  # get "/articles/:id", to: "articles#show"
  

  # Defines the root path route ("/")
  # root "articles#index"
end
