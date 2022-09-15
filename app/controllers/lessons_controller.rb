class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

  def show 
    @lesson = Lesson.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end
end
