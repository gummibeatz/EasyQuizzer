class StudentAnswersController < ApplicationController
  def create 
    if current_student
      questions = params[:questions]
      questions.each do | question, answer |
        current_student.student_answers.create({
        answer_id: answer 
      })
      end
      flash[:success] = "quiz finished"
      respond_with current_student
    end
  end
end
