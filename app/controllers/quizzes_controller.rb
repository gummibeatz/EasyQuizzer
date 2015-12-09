class QuizzesController < ApplicationController
  def index 
    @quizzes = Quizz.all
  end 

  def new
    @quizz = Quizz.new
  end

  def create
    @quizz = Quizz.new(quizz_params)
    if @quizz.save
      flash[:success] = "quizz was created!"
      redirect_to quizzes_path
    else
      render 'new'
    end
  end

  def edit
    @quizz = Quizz.find_by_id(params[:id])
  end

  def update
    @quizz = Quizz.find_by_id(params[:id])
    if @quizz.update_attributes(quizz_params)
      flash[:success] = 'Quizz was updated!'
      redirect_to quizzes_path
    else
      render 'edit'
    end
  end

  def destroy
    @quizz = Quizz.find_by_id(params[:id])
    if @quizz.destroy
      flash[:success] = 'Quizz was destroyed!'
    else
      flash[:warning] = 'Error destroying quizz...'
    end
    redirect_to quizzes_path
  end

  private

  def quizz_params
    params.require(:quizz).permit(:title, :subject, :max_score, questions_attributes: [:id, :title, :free_response, :max_score, :_destroy])
  end

end
