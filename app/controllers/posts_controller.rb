class PostsController < CommonController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find_by(id: params[:id])
    @comments = @post.comments.all
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params) do |post|
    post.user = current_user
    end
    if @post.save
      redirect_to posts_path
    else
      redirect_to posts_path, notice: @post.errors.full_messages.first
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    super(@post, 'Post atualizado com sucesso',post_params);
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    super(@post, 'Post apagado com sucesso',posts_url)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:avatar, :content, :user_id)
    end
end
