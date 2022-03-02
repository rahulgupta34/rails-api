class StudentsController < ApplicationController

    def index
        @students = Student.all 
        render json: @students
    end 

    def show
         @student = Student.find(params[:id])
         render json: @student
    end 

    def create
        @student = Student.create(
            name: params[:name],
            age: params[:age],
            email: params[:email]
        )
        render json: @student
    end 

    def update
     @student = Student.find(params[:id])
        @student.update(
            name: params[:name],
            age: params[:age],
            email: params[:email]
        )
        render json: @student, status: 200
    end

    def destroy
        # @student = Student.all 
        @student = Student.find(params[:id])
        @student.destroy
        render json: @student
    end 

    def search_student
        if params[:search].present?
            @find_student = Student.where("name LIKE '%#{params[:search]}%'")
            if @find_student.length > 0
                render json: @find_student
            else
                render json: "Date Not Found", status: 404
            end
        end
    end

end
