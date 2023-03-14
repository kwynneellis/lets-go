class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @my_ratings = current_user.workouts.ratings_by_others(current_user)
  end
end
