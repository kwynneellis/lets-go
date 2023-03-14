require 'open-uri'

class WorkoutsController < ApplicationController
  before_action :set_user, only: %i[new create show destroy]
  before_action :set_booking, only: %i[show my_workouts]

  def new
    @workout = Workout.new
  end

  def create
    image = URI.open("https://images.unsplash.com/photo-1584735935682-2f2b69dff9d2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8d29ya291dHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60")
    @workout = Workout.new(workout_params)
    @workout.user_id = current_user.id
    @workout.photo.attach(io: image, filename: "image", content_type: "image/png") unless @workout.photo.attached?
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
      lng: @workout.longitude,
      info_window_html: render_to_string(partial: "info_window", locals: {workout: @workout}),
      marker_html: render_to_string(partial: "marker", locals: {workout: @workout})
    }]
  end

  def index
    # The code below enables a filtered search
    # There is a listing class method to ensure that if search is nil, all Listings are displayed
    @workouts = Workout.where.missing(:bookings)
    if params[:query].present?
      # sql_query = <<~SQL
      #   workouts.location ILIKE :query
      #   OR workouts.activity_type ILIKE :query
      #   OR workouts.intensity_level::text ILIKE :query
      #   OR users.first_name ILIKE :query
      # SQL
      # @workouts = Workout.joins(:user).where(sql_query, query: "%#{params[:query]}%")
      @workouts = @workouts.near(params[:query], 1)
      @search_copy = "Showing search results for: #{params[:query]}"
    end
    if params[:category].present?
      @search_copy = "Showing filter results for: #{params[:category]}"
      @workouts = @workouts.where(activity_type: params[:category])
    end
    @workout_location = @workouts.geocoded.map do |workout|
      {
        lat: workout.latitude,
        lng: workout.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {workout: workout}),
        marker_html: render_to_string(partial: "marker", locals: {workout: workout})
      }
    end
  end

  def my_workouts
    @my_workouts = Workout.where(user_id: current_user.id) if user_signed_in?
    @my_bookings = Booking.where(user_id: current_user.id) if user_signed_in?

    @all_workouts = []
    @my_bookings.each do |booking|
      @all_workouts.push(booking.workout)
    end
    @my_workouts.each do |workout|
      @all_workouts.push(workout)
    end

    @all_workouts.sort_by!(&:date)
    @upcoming_workouts = @all_workouts.reject { |workout| workout.date.past? }
    @past_workouts = @all_workouts.select { |workout| workout.date.past? }
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
