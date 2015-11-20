class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string  :title
      t.boolean :free_response
      t.integer :max_score
      t.integer :quizz_id
      t.timestamps null: false
    end
  end
end
