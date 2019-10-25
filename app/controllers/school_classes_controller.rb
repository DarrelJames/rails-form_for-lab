class SchoolClassesController < ApplicationController

  def show
    @school_class = find_school_class_by_id
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(school_class_params)
    @school_class.save

    redirect_to school_class_path(@school_class)
  end

  def edit
    @school_class = find_school_class_by_id
  end

  def update

    @school_class = find_school_class_by_id
    @school_class.update(school_class_params)
    redirect_to school_class_path(@school_class)
  end

  private

  def find_school_class_by_id
    SchoolClass.find_by_id(params[:id])
  end
  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
