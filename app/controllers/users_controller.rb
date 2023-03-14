class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @my_ratings_as_host = current_user.workouts.ratings_by_others(current_user)
    @my_ratings_as_guest = current_user.bookings.ratings_by_others(current_user)

    @all_my_ratings = @my_ratings_as_host.or(@my_ratings_as_guest)
  end
end
