class PostsController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]
  before_action :find_post_and_check_permission, :only => [:edit, :update, :destroy]
  def new
    @group = Group.find(params[:group_id])
    @post = Post.new
  end

  def create
    @group = Group.find(params[:group_id])
    @post = Post.new(post_params)
    @post.group = @group
    @post.user = current_user

    if @post.save
      redirect_to group_path(@group)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to group_path(@group),notice: "Undate Success"
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to group_path(@group), alert: "Post deletes"
  end

  private

  def find_post_and_check_permission
    @group = Group.find(params[:group_id])
    @post = Post.find(params[:id])
  end

  def post_params
      params.require(:post).permit(:content)
  end
end
