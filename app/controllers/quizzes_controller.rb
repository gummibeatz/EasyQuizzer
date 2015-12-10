class QuizzesController < ApplicationController
  def index 
    @quizzes = Quiz.all
  end 

  def new
    @quizz = Quiz.new
  end

  def create
    @quizz = Quiz.new(quiz_params)
    if @quizz.save
      flash[:success] = "quizz was created!"
      redirect_to quizzes_path
    else
      render 'new'
    end
  end

  def edit
    @quizz = Quiz.find_by_id(params[:id])
  end

  def update
    @quizz = Quiz.find_by_id(params[:id])
    if @quizz.update_attributes(quizz_params)
      flash[:success] = 'Quiz was updated!'
      redirect_to quizzes_path
    else
      render 'edit'
    end
  end

  def destroy
    @quizz = Quiz.find_by_id(params[:id])
    if @quizz.destroy
      flash[:success] = 'Quiz was destroyed!'
    else
      flash[:warning] = 'Error destroying quizz...'
    end
    redirect_to quizzes_path
  end

  private

  def quiz_params
    params.require(:quiz).permit(:title, :subject, :max_score, questions_attributes: [:id, :title, :free_response, :max_score, :_destroy, answers_attributes: [:id, :title, :_destroy]])
  end

end
