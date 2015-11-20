class CreateQuizzs < ActiveRecord::Migration
  def change
    create_table :quizzs do |t|
      t.string  :title
      t.string  :subject
      t.integer :max_score
      t.timestamps null: false
    end
  end
end
