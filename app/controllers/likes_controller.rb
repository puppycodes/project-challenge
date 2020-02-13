class LikesController < ApplicationController
  before_action :get_dog

  def create
    if liked?
      flash[:notice] = "Already Liked!"
    elsif @dog.user_id == current_user.id
      flash[:notice] = "Can't like your own Dog!"
    else
      @dog.likes.create(user_id: current_user.id)
    end
    redirect_to @dog
  end

  def destroy
    if liked?
      @like = Like.find_by(user_id: current_user.id, dog_id: @dog.id)
      @like.delete
    else
      flash[:notice] = "Already Unliked!"
    end
    redirect_to @dog
  end

  private

  def get_dog
    @dog = Dog.find(params[:dog_id])
  end

  def liked?
    Like.where(user_id: current_user.id, dog_id: @dog.id).exists?
  end

end
