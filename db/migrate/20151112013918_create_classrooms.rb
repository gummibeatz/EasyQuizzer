class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.timestamps null: false
      t.string    :title
    end
  end
end
