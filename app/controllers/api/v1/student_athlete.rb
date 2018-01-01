module Api
  module V1
    class StudentAthleteController < ApplicationController

      before_action :set_studentAthlete, only: [:show, :destroy]

      def index
        render json: StudentAthlete.all
      end

      def create
      end

      def show
      end

      def destroy
      end

    private
      def set_studentAthlete
        @stdentAthlete = StudentAthlete.find(params[:id])
      end

      def studentAthlete_params
        params.permit(:firstName, :middleName, :lastName, :birthdate)
      end

    end
  end
end
