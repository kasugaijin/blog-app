class ArticlesController < ApplicationController
  
  #When an action does not specify a view, RoR automatically renders its corresponding view 
  def index
    @articles = Article.all
  end
end
