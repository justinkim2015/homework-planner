class AssignmentsController < ApplicationController
  def new
    @assignment = Assignment.new
  end

  def create
    @assignment = Assignment.new(assignment_params)

    if @assignment.save
      flash.notice = "New homework added!"
      HomeworkMailer.with(user: current_user).confirmation_email.deliver_later
      redirect_to lesson_path(@assignment.lesson.id)
    else
      flash.alert = "Homework not added, try again!"
      render :new, status: :unprocessable_entity
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
