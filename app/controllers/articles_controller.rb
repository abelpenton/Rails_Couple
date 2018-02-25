class ArticlesController < ApplicationController
  
  #Get /articles
  def index
    @articles = Article.all
  end

  #Get /articles/:id
  def show
    @article = Article.find(params[:id])
  end

  #Get /articles/new
  def new
    @article = Article.new    
  end

  #POST /articles
  def create
    @article = Article.new(title: params[:article][:title],
                            body: params[:article][:body])
    if @article.save()
      redirect_to @article
    else
      render :new
    end
  end

end
