module Api
  module V1
    class StudentAthletesController < ApplicationController

      before_action :set_student_athletes, only: [:show, :destroy]

      def index
        render json: StudentAthlete.all
      end

      def create
        @student_athlete = StudentAthlete.create(student_athlete_params)
        if @student_athlete.save
          render json: @student_athlete, status: 201
        else
          render json: { errors: @student_athlete.errors.full_messages }, status: 422
        end
      end

      def show
        render json: @student_athlete = StudentAthlete.find(params[:id])
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
        params.permit(:firstName, :middleName, :lastName, :birthdate)
      end

    end
  end
end
