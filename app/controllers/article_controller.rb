class ArticleController < ApplicationController
  
  #Get /articles
  def index
    @articles = Article.all
  end

  #Get /articles/:id
  def show
    @article = Article.find(params[:id])
  end
end
