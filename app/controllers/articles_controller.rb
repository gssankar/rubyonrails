class ArticlesController < ApplicationController
  # Initializing the article
  def new
    @article = Article.new
  end
  #  to show the existing article
  def show
    @article = Article.find(params[:id])
  end
  #  Creating the article, executing the background Job after article creation
  def create
       @article = Article.new(article_params)
       if @article.save
  	SendNotificationsJob.perform_now(@article)
  	redirect_to article_path(@article.id)
       else
  	render 'new'
       end
  end
  private
  def article_params
    params.require(:article).permit(:name, :description)
  end
end

