class PostsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create index]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to action: 'index'
    else
      redirect_to action: 'new'
    end
  end

  def index
    @post = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
