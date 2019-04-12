class ArticlesController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @article = @user.articles.create(article_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    @article = @user.articles.find(params[:id])
    @article.destroy
    redirect_to user_path(@user)
  end
  
  private
    def article_params
      params.require(:article).permit(:name, :publication_date)
    end
end
