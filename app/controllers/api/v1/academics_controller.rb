module Api
  module V1
    class AcademicsController < ApplicationController

      before_action :set_academics, only: [:show, :destroy]

      def index
        render json: Academic.all
      end

      def create
        student_athlete_id = params.delete(:student_athlete_id)
        @student_athlete = StudentAthlete.find(student_athlete_id)

        if @student_athlete.academic
          @student_athlete.academic.destroy
          @student_athlete.save!
        end

        filtered_params = profile_params
        filtered_params[:student_athlete_id] = student_athlete_id
        @academic = Academic.new(filtered_params)

        unless @academic.valid?
          Rails.logger.info @academic.errors.full_messages
          render json: { errors: @academic.errors.full_messages }, status: 422
          return
        end

        @student_athlete.academic = @academic
        if @student_athlete.save
          render json: @academic, status: 201
        else
          Rails.logger.info @student_athlete.errors.full_messages
          render json: { errors: @student_athlete.errors.full_messages }, status: 422
        end
      end

      def show
        render json: @academic
      end

      def destroy
        @academic.destroy
        render :show, status: :ok
      end

    private
      def set_student_athletes
        @student_athlete_id = params.delete(:student_athlete_id)
        @student_athlete = StudentAthlete.find(@student_athlete_id)
      end

      def set_academics
        @student_athlete = set_student_athletes
        @academic = @student_athlete.academic
      end

      def profile_params
        params.require( :profile).permit( :schoolName, :counselorName, :counselorEmail, :counselorPhone, :gpa, :classRank, :sat, :act )
      end

    end
  end
end
