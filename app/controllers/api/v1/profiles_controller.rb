module Api
  module V1
    class ProfilesController < ApplicationController

      before_action :set_profiles, only: [:show, :destroy]

      def index
        render json: Profile.all
      end

      def create
        student_athlete_id = params.delete(:student_athlete_id)
        @student_athlete = StudentAthlete.find(student_athlete_id)

        if @student_athlete.profile
          @student_athlete.profile.destroy
          @student_athlete.save!
        end

        filtered_params = profile_params
        filtered_params[:student_athlete_id] = student_athlete_id
        @profile = Profile.new(filtered_params)

        unless @profile.valid?
          Rails.logger.info @profile.errors.full_messages
          render json: { errors: @profile.errors.full_messages }, status: 422
          return
        end

        @student_athlete.profile = @profile
        if @student_athlete.save
          render json: @profile, status: 201
        else
          Rails.logger.info @student_athlete.errors.full_messages
          render json: { errors: @student_athlete.errors.full_messages }, status: 422
        end
      end

      def show
        render json: @profile
      end

      def destroy
        @profile.destroy
        render :show, status: :ok
      end

    private
      def set_student_athletes
        @student_athlete = StudentAthlete.find(params[:id])
      end

      def set_profiles
        @profile = Profile.find(params[:id])
      end

      def profile_params
        params.require( :profile).permit( :street, :city, :state, :zip, :country, :email, :phone, :siblings )
      end

    end
  end
end
