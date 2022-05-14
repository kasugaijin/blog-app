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
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  # edit and update are similar to new and create and both use the partial _form. 
  def edit
    @article = Article.find(params[:id])
  end

  # if a form does not save to db due to validation error the server would send a 200 OK response because
  # it is acting as expected. However, we want to reload the page and show the errors so we use
  # status: :unprocessable entity to make the server return a 422 unprocessble entity and then Turbo reloads the page
  # and the form is set up to display the errors to the user. BMP is to use JS for live validation.
  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # destroy method finds the article, destroys, then redirects using see_other, which is HTTP 303
  # that does not link to the reqested resource...which makes sense as it is deleted
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end

  # Strong parameters in private method ensure the params hash passed to the CREATE action only contains
  # data that we allow. This prevents potentially malicious actions.

  private

  # this creates a hash from the inputted data in a form that can then be passed to .new arg above 
  def article_params
    params.require(:article).permit(:title, :body)
  end
end

# When we visit http://localhost:3000/articles/new, the GET /articles/new request is mapped to the new action. The new action does not attempt to save @article. 
# Therefore, validations are not checked, and there will be no error messages. When we submit the form, the POST /articles request is mapped to the create action. 
# The create action does attempt to save @article. Therefore, validations are checked. If any validation fails, @article will not be saved, and app/views/articles/new.html.erb will be rendered with error messages.