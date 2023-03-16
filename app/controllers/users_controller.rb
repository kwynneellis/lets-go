class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @my_ratings_as_host = current_user.workouts.ratings_by_others(current_user)
    @my_ratings_as_guest = current_user.bookings.ratings_by_others(current_user)

    @user_ratings_as_host = current_user.workouts.ratings_by_others(@user)
    @user_ratings_as_guest = current_user.bookings.ratings_by_others(@user)

    @all_my_ratings = @my_ratings_as_host.or(@my_ratings_as_guest)

    @users_ratings = @user_ratings_as_host.or(@user_ratings_as_guest)
  end
end
