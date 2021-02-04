class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
    #binding.pry
  end

  def show
    set_student
    #binding.pry
    set_status
  end



  def activate
    set_student
    @student.active = !@student.active
    @student.save
    set_status
    show
    #binding.pry
  end

  private

  def set_status
    if @student.active != true
      @status = "This student is currently inactive."
    else 
      @status = "This student is currently active."
    end
  end

    def set_student
      @student = Student.find(params[:id])
    end


end