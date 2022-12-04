class ArticlesController < ApplicationController
  
  def show
    binding.break
    
    # turn the above into an instance variable
    @article = Article.find(params[:id])
  end
  
end