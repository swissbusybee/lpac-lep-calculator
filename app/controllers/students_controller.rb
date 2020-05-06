class StudentsController < ApplicationController
    def index
    @students = Student.all
    if params[:student]
      @student = Student.new(student_params)
    else
      @student = Student.new
    end
  end

  private

  def student_params
    params.require(:student).permit(:school_year, :school_grade, :lep_indicator_code)
  end
end
