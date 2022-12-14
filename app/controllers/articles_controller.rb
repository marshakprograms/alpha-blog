class ArticlesController < ApplicationController
  
  def show
    # turn the above into an instance variable
    @article = Article.find(params[:id])
  end
  
  def index
    @articles = Article.all
  end
  
  def new
    @article = Article.new
  end
  
  def edit
    @article = Article.find(params[:id])
  end
  
  def create
    @article = Article.new(params.require(:article).permit(:title, :description))
    # render plain: @article.inspect
    if @article.save
      flash[:notice] = "Article was created"
      redirect_to @article
    else
      render 'new'
    end
  end
  
  def update
    @article = Article.find(params[:id])
    if @article.update(params.require(:article).permit(:title, :description))
      flash[:notice] = "Article has been updated"
      redirect_to @article
    else
      render 'edit'
    end
  end

end