class ArticlesController < ApplicationController
  
  before_action :set_article, except: [:index,:new,:create]  
  #Get /articles
  def index
    @articles = Article.all
  end

  #Get /articles/:id
  def show
  end

  #Get /articles/new
  def new
    @article = Article.new    
  end
  
  def edit
  end
  
  def update
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end
  
  #POST /articles
  def create
    @article = Article.new(article_params)
    if @article.save()
      redirect_to @article
    else
      render :new
    end
  end

  private 

  def set_article
    @article = Article.find(params[:id])
  end
  #method for security updload
  def article_params
    params.require(:article).permit(:title,:body)  
  end

end
