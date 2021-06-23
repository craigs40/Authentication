# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create index]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user.id = current_user.id
  end

  def index
    @post = Post.all
  end
end
