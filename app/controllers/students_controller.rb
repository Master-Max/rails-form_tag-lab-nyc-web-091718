class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    #byebug
  end

  def create
    #byebug
    # Post.create(title: params[:post][:title], description: params[:post][:description])
    Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to students_path
  end

end
