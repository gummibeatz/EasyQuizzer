class StudentsController < ApplicationController
  before_action :student_signed_in

  def index
    @student = current_student
  end

  private
  def student_signed_in
    unless current_student
      flash[:notice] = "Must be logged in as a student"
      redirect_to :root
    end
  end
end
