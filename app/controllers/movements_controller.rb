class MovementsController < ApplicationController
  def create
    @workout = Workout.find(params[:workout_id])
    @movement = Movement.find(params[:movement][:movement_id])
    @workout.movements.push(@movement)

    redirect_to workout_path(@workout)
  end

  def edit
  end

  def destroy
    @movement = Movement.find(params[:id])
    @movement.destroy

    redirect_to workout_path(@workout)
  end

end
