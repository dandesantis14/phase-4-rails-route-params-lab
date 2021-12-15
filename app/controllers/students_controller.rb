class StudentsController < ApplicationController

  def index
    students =  if params[:name]
                  Student.where(first_name: params[:name] or last_name: params[:name])
                    # .or(Student.where(last_name: params[:name]))
                else
                  Student.all
                end 
    render json: students
  end

  def show
    student = Student.all.find(params[:id])
    render json: student
  end

end
