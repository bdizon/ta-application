class CreateCourses < ActiveRecord::Migration[5.2]
  
  def change
    create_table :courses do |t|
      t.integer :section_no
      t.string :course_title
      t.string :semester
      t.string :instructor
      t.boolean :grader

      t.timestamps
    end
  end
end
