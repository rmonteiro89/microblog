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
	tmp = params[:id]
	if tmp.to_i != 0							#Verificar se o parametro passado na URL é um Integer
	  ind = tmp
	else
	  list = Post.all
	  list.each do |post|
		if post.title.parameterize == tmp		#Verifica se algum Post.title no formato slugify é o mesmo que o parametro passado na URL
			ind = post.id
		end
	  end
	end
	@post = Post.find(ind)
  end
  
  def new
	@post = Post.new
  end
  
  private
  
    def post_params
	  params.require(:post).permit(:title, :message)
	end
end