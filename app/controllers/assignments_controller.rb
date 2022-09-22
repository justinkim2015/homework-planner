class AssignmentsController < ApplicationController
  def create
    @assignment = Assignment.new(assignment_params)

    if @assignment.save
      flash.notice = "New homework added!"
      WarningEmailJob.set(wait: (@assignment.length - 1).week).perform_later(@assignment)
      redirect_to lesson_path(@assignment.lesson.id)
    else
      flash.alert = "Homework not added, try again!"
      redirect_to lesson_path(@assignment.lesson.id), status: :unprocessable_entity
    end
  end

  def destroy
    @assignment = Assignment.find(params[:id])
    id = @assignment.lesson.id
    @assignment.destroy

    redirect_to lesson_path(id), status: :see_other
  end

  private

  def assignment_params
    params.require(:assignment).permit(:name, :length, :lesson_id)
  end
end
