class TeachersController < ApplicationController
  before_action :teacher_signed_in

  def index
    @teacher = current_teacher
  end

  private
  def teacher_signed_in
    unless current_teacher
      flash[:notice] = "Must be logged in as a teacher"
      redirect_to :root
    end
  end
end
