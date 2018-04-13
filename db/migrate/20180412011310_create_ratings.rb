class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.integer :rating
      t.integer :course_id
      t.timestamps
    end
    add_index :ratings, :course_id
  end
end
