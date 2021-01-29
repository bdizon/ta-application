class StudentsController < ApplicationController
  before_action :authenticate_user!

  def new
    @student = Student.new
  end
  
  def create
    @student = Student.new(params[:student])
  end
end
