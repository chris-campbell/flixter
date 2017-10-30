class LessonsController < ApplicationController
    before_action :authenticate_user!
    before_action :user_enrolled?
    
    def show
    end
    
    private
      
      helper_method :user_enrolled?
      def user_enrolled?
        if current_user.enrolled_in?(current_course)
          render :show
        else
          redirect_to course_path(current_course), alert: "Your not enrolled in this course yet.
                                                           Click Enroll below to see lessons"
        end
      end

      helper_method :current_lesson
      def current_lesson
        @current_lesson ||= Lesson.find(params[:id])
      end
      
      def current_course
        current_lesson.section.course
      end
      
end
