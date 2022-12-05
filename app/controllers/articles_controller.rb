class ArticlesController < ApplicationController
  
  def show
    # turn the above into an instance variable
    @article = Article.find(params[:id])
  end
  
  def index
    @articles = Article.all
  end
  
  def new
  end
  
  def create
    @article = Article.new(params.require(:article).permit(:title, :description))
    # render plain: @article.inspect
    @article.save
  end


end