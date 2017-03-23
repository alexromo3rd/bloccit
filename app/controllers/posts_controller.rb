class PostsController < ApplicationController
  def index
  	@posts = Post.all
  	
  	@posts.each do |post|
      if @posts.index(post) == 0
        post.title = "SPAM"
      elsif (@posts.index(post) % 5) == 0
        post.title = "SPAM"
      end
    end
  end

  def show
  end

  def new
  end

  def edit
  end
end
