class PostsController < AdminController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    render 'edit'
  end

  def create
    Post.create post_params 
    redirect_to '/admin/posts' 
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update post_params 

    redirect_to '/admin/posts' 
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to '/admin/posts' 
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

end
