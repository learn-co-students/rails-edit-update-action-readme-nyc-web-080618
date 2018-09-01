class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    # byebug
    ## the hash in params in create is different from update
    @post = Post.new
    @post.title = params[:title]
    @post.description = params[:description]
    @post.save
    redirect_to post_path(@post)
  end

  # add edit and update methods here
  def edit
    @post = Post.find(params[:id])
  end

  def update
    # byebug
    @post = Post.find(params[:id])
    @post.update(title: params[:post][:title], description: params[:post][:description])
    redirect_to post_path(@post)
  end

end
