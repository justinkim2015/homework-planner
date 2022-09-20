class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = current_user.lessons.build(lesson_params)

    if @lesson.save
      flash.notice = 'Lesson successfully created!'
      redirect_to @lesson
    else
      flash.alert = 'Something went wrong!'
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def update
    @lesson = Lesson.find(params[:id])

    if @lesson.update(lesson_params)
      flash.notice = 'Lesson successfully updated!'
      redirect_to @lesson
    else
      flash.alert = 'Something went wrong!'
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    flash.alert = 'Lesson deleted!'

    redirect_to root_path, status: :see_other
  end

  private

  def lesson_params
    params.require(:lesson).permit(:rank, :time, :date, assignments_attributes: [:name, :length, :id])
  end
end
