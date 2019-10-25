class StudentsController < ApplicationController

  def show
    @student = find_student_by_id
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student.save

    redirect_to student_path(@student)
  end

  def edit
    @student = find_student_by_id
  end

  def update

    @student = find_student_by_id
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  private

  def find_student_by_id
    Student.find_by_id(params[:id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
