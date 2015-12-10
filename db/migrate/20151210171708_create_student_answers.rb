class CreateStudentAnswers < ActiveRecord::Migration
  def change
    create_table :student_answers do |t|
      t.integer :student_id
      t.integer :answer_id
      t.timestamps null: false
    end
  end
end
