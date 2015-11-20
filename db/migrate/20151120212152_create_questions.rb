class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string  :title
      t.bool    :free_response
      t.timestamps null: false
    end
  end
end
