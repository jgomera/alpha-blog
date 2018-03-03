class ArticlesController <ApplicationController
  def new
    @article = Article.new
  end

  def create
    #Para crear un nuevo articulo utilizando el parametro params
    #Esto sera modificado con el uso de IF
    @article = Article.new(article_params)
    #@article = Article.path(article_path)
    if @article.save
      #desplegar un mensaje de la accion realizada
      flash[:notice] = "Article was successfully created"
      redirect_to article_path(@article)
      #redirect_to article_path
    else
      render 'new'
  end
end
  def show
    @article = Article.find(params[:id])
  end

  #Definiendo el parametro de forma private y requiriendo el articulo
  private
    def article_params
      params.require(:article).permit(:title, :description)
    end
 
end
