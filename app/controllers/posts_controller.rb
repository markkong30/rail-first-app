class PostsController < ApplicationController
  def create
    @post = Post.create(title: params[:title], user_id: params[:user_id])
    render 'posts/create.jbuilder'
  end

  def list
    @post_all = Post.all
    render json: { post: @post_all }
    
    #render 'posts/list.jbuilder'
  end
end
