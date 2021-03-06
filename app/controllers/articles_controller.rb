class ArticlesController <ApplicationController

#para llamar el metodo set_article, el cual alimentara def edit,show,update and destroy
  before_action :set_article, only: [:edit, :update, :show, :destroy]

#para definir el index article. ejemplo:http://10.0.0.15:8080/articles
  def index
    @articles = Article.all
  end


  def new
    @article = Article.new
  end

  def edit
    #esto es para llamar el ID del articulo creado y evitar este error   <% if @article.errors.any? %> undefined method `errors' for nil:NilClass
    #@article = Article.find(params[:id])
    #se sutituira por el uso de methodo set_article
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
      else
      render 'new'
  end
end

   #aqui defino la accion de Update para evitar el error The action 'update' could not be found for ArticlesController
  def update
    #@article = Article.find(params[:id])
    #se sutituira por el uso de methodo set_article
    if @article.update(article_params)
      flash[:notice] = "Article was successfully updated"
      redirect_to article_path(@article)
    else
      render 'edit'
    end
  end

  #Para mostrar el articulo que he creado
  def show
    #@article = Article.find(params[:id])
    #se sutituira por el uso de methodo set_article
  end

  #Para Borrar el articulo que he creado
  def destroy
    #@article = Article.find(params[:id])
    #se sutituira por el uso de methodo set_article
    @article.destroy
    flash[:notice] = "Article was successfully deleted"
    redirect_to articles_path
  end

  #Definiendo el parametro de forma private y requiriendo el articulo
private
   #define this methods for avoind redundance code
   def set_article
     @article = Article.find(params[:id])
   end

    def article_params
      params.require(:article).permit(:title, :description)
    end

end
