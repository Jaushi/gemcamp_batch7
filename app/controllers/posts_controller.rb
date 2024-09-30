class PostsController < ApplicationController
    def index
      @posts = Post.all
    end
  
    def new
      @post = Post.new
    end
  
    def create
      @post = Post.new(post_params)
      if @post.save
        redirect_to posts_path, notice: 'Post was successfully created.'
      else
        render :new
      end
    end
  
    def show
      @post = Post.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The post you're looking for cannot be found."
      redirect_to posts_path
    end
  
    private
  
    def post_params
      params.require(:post).permit(:title, :content)
    end
  end