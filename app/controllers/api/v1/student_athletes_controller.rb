module Api
  module V1
    class StudentAthletesController < ApplicationController

      before_action :set_student_athletes, only: [:show, :destroy]

      def index
        render json: StudentAthlete.all
      end

      def create
        user_id = params.delete(:user_id)
        @user = User.find(user_id)

        if @user.student_athlete
          @user.student_athlete.destroy
          @user.save!
        end

        filtered_params = student_athlete_params
        filtered_params[:user_id] = user_id
        @student_athlete = StudentAthlete.new(filtered_params)


        unless @student_athlete.valid?
          Rails.logger.info @student_athlete.errors.full_messages
          render json: { errors: @student_athlete.errors.full_messages }, status: 422
          return
        end

        @user.student_athlete = @student_athlete
        if @user.save
          render json: @user, status: 201
        else
          render json: { errors: @user.errors.full_messages }, status: 422
        end
      end

      def show
        render json: @student_athlete
      end

      def destroy
        @student_athlete.destroy
        render :show, status: :ok
      end

    private
      def set_student_athletes
        @student_athlete = StudentAthlete.find(params[:id])
      end

      def student_athlete_params
        params.permit( :firstName, :middleName, :lastName, :birthdate, :gender, :intended_enrollment_year )
      end

    end
  end
end
