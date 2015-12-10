class RenameQuizzToQuiz < ActiveRecord::Migration
  def change
    rename_table :quizzs, :quizzes
    rename_column :questions, :quizz_id, :quiz_id
  end
end
