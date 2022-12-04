class ArticlesController < ApplicationController
  
  def show
    
    
    # turn the above into an instance variable
    @article = Article.find(params[:id])
  end
  
end