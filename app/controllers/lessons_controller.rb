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
    @lesson = Lesson.new(lesson_params)

    if @lesson.save
      redirect_to @lesson
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def delete
  end
  
  private

  def lesson_params
    params.require(:lesson).permit(:rank, :time, :date)
  end
end
