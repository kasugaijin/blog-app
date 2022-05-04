Rails.application.routes.draw do

  # root page is linked to articles controller, index action
  root "articles#index"

  # Resourceful routing takes care of the 7 RESTful actions in one and sets up URL helpers for each
  # :comments is nested in articles
  resources :articles do
    resources :comments
  end

  # /articles page is linked to articles controller, index action (both this and root are the same)
  # get "/articles", to: "articles#index"

  # /articles/:id linked to articles controller, show action. The :id is passed to controller via params.
  # get "/articles/:id", to: "articles#show"
  

  # Defines the root path route ("/")
  # root "articles#index"
end
