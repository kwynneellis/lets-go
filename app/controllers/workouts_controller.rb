class WorkoutsController < ApplicationController


  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)
    @workout.user = @user
    if @workout.save
      redirect_to workout_path(@workout)
    else
      render :new, status: :unprocessable_entity
    end
  end


  def index
    # The code below enables a filtered search
    # There is a listing class method to ensure that if search is nil, all Listings are displayed
    search = params[:search]
    if params[:query].present?
      sql_query = <<~SQL
        listings.title ILIKE :query
        OR workouts.description ILIKE :query
        OR workouts.category ILIKE :query
        OR users.first_name ILIKE :query
      SQL
      @workouts = Workout.joins(:user).where(sql_query, query: "%#{params[:query]}%")
      @search_copy = "Showing search results for: #{params[:query]}"
    elsif search.present?
      @search_copy = "Showing filter results for: #{search[:category]}"
      @workouts = Workout.where(category: search[:category])
    else
      @workouts = Workout.all
    end
    @my_workouts = Workout.where(user_id: current_user.id) if user_signed_in?
  end

end
