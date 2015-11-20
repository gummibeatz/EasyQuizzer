class CreateFreeResponses < ActiveRecord::Migration
  def change
    create_table :free_responses do |t|
      t.integer   :student_id
      t.integer   :question_id
      t.timestamps null: false
    end
  end
end
