class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string  :title
      t.bool    :free_response
      t.integer :max_score
      t.timestamps null: false
    end
  end
end
