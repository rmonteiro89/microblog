class PostsController < ApplicationController

  def index
	@posts = Post.all
  end

  def create
	@post = Post.new(post_params)
	if @post.save
	  flash[:success] = "NEW POST has been published!"
	  redirect_to @post
	else
	  render 'new'
	end
  end
  
  def show
	@post = Post.find(params[:id])
  end
  
  def new
	@post = Post.new
  end
  
  private
  
    def post_params
	  params.require(:post).permit(:title, :message)
	end
end