class BoardController < ApplicationController
  def index
    @post = Post.all.reverse
  end

  def create
    @post = Post.new(title: params[:title], content: params[:content])
    @post.save
    
    redirect_to "/"
  end

  def new
  end
  
  def edit_view
    @edit_post = Post.find(params[:id])
  end

  def edit
    @edit_post = Post.find(params[:id])
    @edit_post.title = params[:title]
    @edit_post.content = params[:content]
    @edit_post.save
    
    redirect_to '/'
    
  end

  def destroy
    @destroy_post = Post.find(params[:id])
    @destroy_post.destroy
    
    redirect_to "/"
  end
  
  def comment_create
    @comment = Comment.new(post_id: params[:post_id], content: params[:content])
    @comment.save
    
    redirect_to :back
  end
  
  def destroy_reply
    @destroy_reply = Comment.find(params[:id])
    @destroy_reply.destroy
    
    redirect_to "/"
  end    
  
  def update_reply
    @one_reply = Comment.find(params[:id])
  end  
  
  def reply_update
    @one_reply = Comment.find(params[:id])
    @one_reply.content = params[:content]
    @one_reply.save
    
    redirect_to "/"
  end  
end
