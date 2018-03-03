class ArticlesController <ApplicationController
  def new
    @article = Article.new
  end

  def create
    #render plain: params[:article].inspect
    #Para crear un nuevo articulo utilizando el parametro params
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_show(@article)
  end

  #Definiendo el parametro de forma private y requiriendo el articulo
  private
    def article_params
      params.require(:article).permit(:title, :description)
    end

end
