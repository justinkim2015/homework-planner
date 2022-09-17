class HomeworkController < ApplicationController
  def new
    @homework = Homework.new
  end

  def create
    @homework = Homework.new(homework_params)

    if @homework.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def homework_params
    params.require(:homework).permit(:name, :length)
  end
end
