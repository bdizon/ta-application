class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :reviewer
      t.string :stud_email
      t.boolean :prev_grader
      t.integer :grader_rating
      t.boolean :recommend
      t.string :notes

      t.timestamps
    end
  end
end
