class WorkoutsController < ApplicationController
  before_action :set_user, only: %i[new create show destroy]
  before_action :set_booking, only: %i[show my_workouts]

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)
    @workout.user_id = current_user.id
    if @workout.save
      redirect_to workout_path(@workout)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @workout = Workout.find(params[:id])
    @user.id = @workout.user_id
    @markers = [{
      lat: @workout.latitude,
      lng: @workout.longitude
    }]
  end

  def index
    # The code below enables a filtered search
    # There is a listing class method to ensure that if search is nil, all Listings are displayed
    @workouts = Workout.all
    @workout_location = @workouts.geocoded.map do |workout|
      {
        lat: workout.latitude,
        lng: workout.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {workout: workout}),
        marker_html: render_to_string(partial: "marker", locals: {workout: workout})
      }
    end
    search = params[:search]
    if params[:query].present?
      sql_query = <<~SQL
        workouts.activity_type ILIKE :query
        OR workouts.intensity_level::text ILIKE :query
        OR workouts.location ILIKE :query
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

  def my_workouts
    @my_workouts = Workout.where(user_id: current_user.id) if user_signed_in?
    @booking = Booking.where(user_id: current_user.id) if user_signed_in?
  end

  def edit
    @workout = Workout.find(params[:id])
  end

  def update
    @workout = Workout.find(params[:id])
    @workout.update(workout_params)

    redirect_to workout_path(@workout)
  end

  def destroy
    @workout = Workout.find(params[:id])

    if @workout.destroy!
      redirect_to workouts_path, status: :see_other
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_user
    @user = User.find(current_user.id)
  end

  def set_booking
    @booking = Booking.new
  end

  def workout_params
    params.require(:workout).permit(:activity_type, :intensity_level, :location, :date,
                                    :start_time, :duration, :description, :capacity, :user_id, :photo)
  end
end
