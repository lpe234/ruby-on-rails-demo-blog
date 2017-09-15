class PostsController < ApplicationController

  def index
    @post = Post.all
  end

  # 创建Form页面
  def new
    @post = Post.new
  end

  # 实际创建接口
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, :notice=>'Your post was saved'
    else
      render 'new'
    end
  end

  def edit

  end

  def update

  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy

  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end

end
