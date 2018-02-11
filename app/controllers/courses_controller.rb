class CoursesController < ApplicationController
    
    def index
        @courses = Course.search(params[:search])
    end
    
    def show
        @course = Course.find(params[:id])
    end
end
