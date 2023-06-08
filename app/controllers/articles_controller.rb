class ArticlesController < ApplicationController
    
    before_action :set_article, only: [:show, :edit, :update, :destroy]

    def show
    end
    def index
        @articles= Article.all
    end

    def new 
        @article= Article.new
    end

    def edit
    end

    def create
        @article= Article.new(article_params)
        @article.user = User.first
        if @article.save
            flash[:notice] = "Article created Succesfully"
            redirect_to article_path(@article)
        else
            render 'new'       
        end
    end
    
    
    def update
        if @article.update( article_params )
            flash[:notice]= 'Update Scuccesful'
            redirect_to article_path(@article)
        else
            render 'edit'
            
        end
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        respond_to do |format|
            format.html { redirect_to articles_path notice: 'Article was successfully deleted.' }
            format.json { head :no_content }
        end
    end

    private

    def set_article
        @article = Article.find(params[:id])
    end

    def article_params
        params.require(:article).permit(:title, :description)
    end
end