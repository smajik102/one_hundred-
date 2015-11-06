class MovementsController < ApplicationController
  def create
    @workout = Workout.find(params[:workout_id])
    @movement = @workout.movements.create(params[:movement].permit(:movement, :reps))

    redirect_to workout_path(@workout)
  end

  def edit
  end


end
