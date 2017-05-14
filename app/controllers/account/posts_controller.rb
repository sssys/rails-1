class Account::PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = current_user.posts
  end

  def edit
    @posts = Post.find(params[:id])
  end

  def destroy
    @group = Group.find(params[:group_id])
    @posts = Post.destroy(post_params)
    @post.destroy

    flash[:alert] = "Group delete"
    redirect_to group_path(@group)
  end

end
