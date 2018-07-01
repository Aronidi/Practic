class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end
    def show
        @article = Article.find(params[:id])
    end
    def edit
    end
    def new
        @article = Article.new
    end
    def create
        @article = Article.new(article_params)
    
        if @article.save
          redirect_to articles_path
        else
          render :new
        end
      end
    def update
        if @article.update_attributes(article_params)
          redirect_to articles_path
        else
          render :edit
        end
      end
    def destroy
        @article.destroy
    
        redirect_to hotels_path
      end
    def create
        @article = Article.new(article_params)
       
        @article.save
        redirect_to @article
      end
       
      private
        def article_params
          params.require(:article).permit(:wifi, :breakfast, :price, :title, :address, :photo, :text, :number, :rating)
        end
end
