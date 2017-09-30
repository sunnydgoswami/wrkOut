class ExercisesController < ApplicationController
    def create
        @workout = Workout.find(params[:workout_id])
        @exercise = @workout.exercises.create(params[:exercise].permit(:name, :sets, :reps, :weight, :notes))
        
        redirect_to workout_path(@workout)
    end
    
    # def destroy
    #     @workout = Workout.find(params[:workout_id])
    #     @exercises.destroy
    #     flash[:success] = "Exercise Deleted!"
    #     redirect_to workout_path(@workout)
    # end    
    
end
