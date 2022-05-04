class ArticlesController < ApplicationController
  
  #When an action does not specify a view, RoR automatically renders its corresponding view 
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  # instantiates a new article but does not save it. This is used in its corresponding view file.
  def new
    @article = Article.new
  end

  # instantiates new article with values. The redirect to causes browser to make request for new page.
  # render is used if save fails and allows instance variables to remain
  def create
    @article = Article.new(title: '...', body: '...')

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end
end
