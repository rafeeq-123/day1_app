class WorkoutsController < ApplicationController
  before_action :workout_find_params, only: [:show, :edit, :update]

  def index
    @workouts = Workout.all
  end

  def new
    @workout = Workout.new
  end

  def show
  end

  def create
    @workout = Workout.new(workout_params)
   if @workout.save
      redirect_to @workout
    else
      render 'new'
     end
  end

  def edit
  end

  def update
    if @workout.update(workout_params)
       @workout.save
       redirect_to @workout
    else
      render 'edit'
    end
  end

  def destroy
    workout_find_params
    @workout.destroy
    redirect_to root_path
  end

  private

  def workout_params
    params.require(:workout).permit(:mood,:length,:date)
  end

  def workout_find_params
    @workout = Workout.find(params[:id])
  end
end
