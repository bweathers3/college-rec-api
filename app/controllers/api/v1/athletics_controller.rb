module Api
  module V1
    class AthleticsController < ApplicationController

      before_action :set_athletics, only: [:show, :destroy]

      def index
        render json: Athletic.all
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
        @athletic = Athletic.new(filtered_params)

        unless @athletic.valid?
          Rails.logger.info @athletic.errors.full_messages
          render json: { errors: @athletic.errors.full_messages }, status: 422
          return
        end

        @student_athlete.athletic = @athletic
        if @student_athlete.save
          render json: @athletic, status: 201
        else
          Rails.logger.info @student_athlete.errors.full_messages
          render json: { errors: @student_athlete.errors.full_messages }, status: 422
        end
      end

      def show
        render json: @athletic
      end

      def destroy
        @athletic.destroy
        render :show, status: :ok
      end

    private
      def set_student_athletes
        @student_athlete_id = params.delete(:student_athlete_id)
        @student_athlete = StudentAthlete.find(@student_athlete_id)
      end

      def set_athletics
        @student_athlete = set_student_athletes
        @athletic = @student_athlete.athletic
      end

      def profile_params
        params.require( :profile).permit( :stat1, :stat2, :stat3, :stat4, :stat5, :stat6, :stat7, :stat8, :stat9, :stat10, :stat11, :stat12 )
      end

    end
  end
end
