module Api
  module V1
    class StudentAthleteController < ApplicationController

      before_action :set_studentAthlete, only: [:show, :destroy]

      def index
        render json: StudentAthlete.all
      end

      def create
        @studentAthlete = StudentAthlete.create(studentAthlete_params)
        if @studentAthlete.save
          render json: @studentAthlete, status: 201
        else
          render json: { errors: @studentAthlete.errors.full_messages }, status: 422
        end
      end

      def show
        render json: @studentAthlete = StudentAthlete.find(params[:id]) 
      end

      def destroy
        @studentAthlete.destroy
        render :show, status: :ok
      end

    private
      def set_studentAthlete
        @studentAthlete = StudentAthlete.find(params[:id])
      end

      def studentAthlete_params
        params.permit(:firstName, :middleName, :lastName, :birthdate)
      end

    end
  end
end
