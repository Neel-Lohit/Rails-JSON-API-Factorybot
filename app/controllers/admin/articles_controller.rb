class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :update, :destroy]

  # # GET /articles
  # def index
  #   @user = User.find(params[:user_id])
  #   @articles = @user.articles
  # # respond_to do |format|
  # #   format.html { @articles }
  # #   format.json { render json: @articles }
  # # end
  #   render json: @articles
  # end

  # # GET /articles/1
  # def show
  # # respond_to do |format| 
  # #   format.html { @article }
  # #   format.json { render json: @article }
  #   render json: @article
  # #end
  # end

  # # POST /articles
  # def create
  #   @article = Article.new(article_params)
  #   @article.user = User.find(params[:user_id])

  # # respond_to do |format|  
  #   if @article.save
  # #     format.html { redirect_to article_url(@article), notice: "Article was successfully created." }
  # #     format.json {render json: @article, status: :created, location: @article}       
  #     render json: @article, status: :created, location: user_articles_path
  #   else
  #     # format.html { render :new, status: :unprocessable_entity }
  #     # format.json { render json: @article.errors, status: :unprocessable_entity }
  #     render json: @article.errors, status: :unprocessable_entity
  #   end
  # #end
  # end

  # # PATCH/PUT /articles/1
  # def update
  # # respond_to do |format|
  #   if @article.update(article_params)
  #       # format.html { redirect_to article_url(@article), notice: "Article was successfully updated." }
  #       # format.json { render :show, status: :ok, location: @article }
  #       render json: @article
  #   else
  #       format.html { render :edit, status: :unprocessable_entity }
  #       format.json { render json: @article.errors, status: :unprocessable_entity }
  #       render json: @article.errors, status: :unprocessable_entity
  #   end
  # #end
  # end

  # # DELETE /articles/1
  # def destroy
  #   @article.destroy
  #   render json: "successfully destroyed!"
  #   # respond_to do |format|
  #   #   format.html { redirect_to articles_url, notice: "Article was successfully destroyed." }
  #   #   format.json { head :no_content }
  #   # end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def article_params
      params.require(:article).permit(:title, :description)

    end
end
