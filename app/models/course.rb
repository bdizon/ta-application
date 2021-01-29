class Course < ApplicationRecord
   # validates :section_no, uniqueness: true, { message: "Section_no already exists" }
   validates_uniqueness_of :section_no, :message => 'Section Number already exists.'
   validates :section_no, presence: true, allow_blank: false
   validates :course_title, presence: true, allow_blank: false
   validates :semester, presence: true, allow_blank: false
   validates :instructor, presence: true, allow_blank: false
   #validates doesn't work on boolean values

 end
