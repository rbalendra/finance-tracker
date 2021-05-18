class FriendshipsController < ApplicationController
  def create

  end

  def destroy
    friendship = current_user.friendships.where(friend_id: params[:id]).first
    friendship.destroy
    flash[:notice] = "stopped following"
    redirect_to_my_friends_path
  end
end
