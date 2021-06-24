# frozen_string_literal: true

class PostsController < ApplicationController
  def new
    @post = Post.new
    @posts = Post.all
  end

  def create
    @post = Post.new(post_params)
    @post.user.id = current_user.id
    if @post.save
      redirect_to @post
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
