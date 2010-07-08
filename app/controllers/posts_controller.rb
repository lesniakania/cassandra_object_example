class PostsController < ApplicationController
  before_filter :load_post, :only => [:show, :edit, :update]

  def index
    @posts = Post.all.compact
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to(post_path(@post))
    else
      render :new
    end
  end

  def edit
  end

  def update
    @post.attributes = params[:post]
    if @post.save
      redirect_to(post_path(@post))
    else
      render :edit
    end
  end

  protected

  def load_post
    @post = Post.get(params[:id])
  end
end
