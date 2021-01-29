class CoursesController < ApplicationController
  before_action :authenticate_user!

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def edit
    @course = Course.find(params[:id])
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy

    redirect_to courses_path
  end


  def create
    @course = Course.new(course_params)
    #redirect to new if section_no is not unique
    # || @course.course_title || @course.semester || @course.instructor || @course.grader
    # if @course.section_no
    #     redirect_to action: 'new'
    # elsif @course.course_title
    #     redirect_to action: 'new'
    # elsif @course.semester
    #     redirect_to action: 'new'
    # elsif @course.instructor
    #     redirect_to action: 'new'
    # else
    # @course.save
    # redirect_to @course
    # end
    # if @course.section_no
    #     redirect_to action: 'new'
    # else
    #   @course.save
    #   redirect_to @course
    # end
    @course.save
    redirect_to @course
  end

  def update
  @course = Course.find(params[:id])

    if @course.update(course_params)
      redirect_to @course
    else
      render 'edit'
    end
  end

  private
    def course_params
      params.require(:course).permit(:section_no, :course_title, :semester, :instructor, :grader)
    end

  #layout "application"


end
