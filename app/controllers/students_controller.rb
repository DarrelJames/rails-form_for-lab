class StudentsController < ApplicationController

  def show
    @student = find_student_by_id
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(params.require(:student).permit(:first_name, :last_name))
    @student.save

    redirect_to student_path(@student)
  end

  def edit
    @student = find_student_by_id
  end

  def update

    @student = find_student_by_id
    @student.update(params.require(:student).permit(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  private

  def find_student_by_id
    Student.find_by_id(params[:id])
  end
end
