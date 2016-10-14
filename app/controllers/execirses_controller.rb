class ExecirsesController < ApplicationController
  def create
    @workout = Workout.find(params[:workout_id])
    @execirse = @workout.execirses.create(params[:execirse].permit(:name, :sets, :rep))
    redirect_to workout_path(@workout)
  end
end
