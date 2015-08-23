class PostsController < ApplicationController
  def index
    @posts = Post.last(10).reverse
  end

  def new
    @post = Post.new
  end

  # POST /posts
  def create
    @post = Post.new(post_params)
      if @post.save
        flash[:success] = "Your post has been submitted!"
        redirect_to action: "index"
      else
        render 'new'
      end
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def post_params
    params.require(:post).permit(:author, :title, :content)
  end
end
