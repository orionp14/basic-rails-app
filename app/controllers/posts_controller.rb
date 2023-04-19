class PostsController < ApplicationController
    def create
      post = Post.create(post_params)
      render json: post
    end
  
    def index
      posts = Post.all
      render json: posts
    end
  
    private
  
    def post_params
      params.require(:post).permit(:content, :user_id)
    end
  end
  
