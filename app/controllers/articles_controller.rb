class ArticlesController < ApplicationController
  before_action :set_article, only: %i[ show edit update destroy ]
  http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
  # GET /articles or /articles.json
  def index
    @articles = Article.all
  end

  # GET /articles/1 or /articles/1.json
  def show
    @article = Article.find(params[:id])
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
    @article = Article.find(params[:id])
  end

  # POST /articles or /articles.json
  def create
    @article = Article.new(article_params)

      if @article.save
        redirect_to @article, notice: 'Article was successfully created.'
      else
        render :new, status: :unprocessable_entity
      end
  end

  # PATCH/PUT /articles/1 or /articles/1.json
  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article, notice: 'Article was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /articles/1 or /articles/1.json
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to root_path, status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_params
      params.require(:article).permit(:title, :body, :status)
    end
end
