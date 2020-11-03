class StudentsController < ApplicationController

  def index
    @students = Student.all
  end
  
  def show
    @student = Student.find(params[:id])
  end
  
  def new
    @student = Student.new
  end
  
  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.create(duck_params)
    redirect_to student_path(@student)
  end

  def update
    @student = Student.find(params[:id])
    @student.update(duck_params)
    redirect_to student_path(@student)
  end

  private

  def duck_params
    params.require(:student).permit(:name, :mod)
  end
end
