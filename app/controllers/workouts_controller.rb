class WorkoutsController < ApplicationController
  before_action :authorize, except: [:index, :show]
  before_action :find_workout, only: [:show, :edit, :update, :destroy]


  def index
    @workouts = Workout.all.order("Created_at DESC")
  end

  def show
    @workout = Workout.find(params[:id])
  end

  def new
    @workout = Workout.new
  end

  def create
    if @workout = Workout.new(workout_params)
    @workout.save

    current_user.add_workout(@workout)

    redirect_to @workout
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @workout.update(workout_params)
      redirect_to @workout
    else
      render 'edit'
    end
  end

  def destroy
    @workout.destroy
    redirect_to '/workouts'
  end

  private

  def workout_params
    params.require(:workout).permit(:date, :workout, :notes)
  end

  def find_workout
      @workout = Workout.find(params[:id])
  end

end
