module Api
  module V1
    class ProfilesController < ApplicationController

      before_action :set_profiles, only: [:show, :destroy]

      def index
        render json: Profile.all
      end

      def create
        ##@student = StudentAthlete.find(params[:student_athlete_id])
        ##@profile = @student.Profile.create(profile_params)
        @student_athlete.profile.create(profile_params)
        if @profile.save
          render json: @profile, status: 201
        else
          Rails.logger.info @profile.errors.full_messages
          render json: { errors: @profile.errors.full_messages }, status: 422
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
        params.require( :profile).permit(:street)
      ##  params.permit( :student_athlete_id, :street, :city, :state, :zip, :country, :email, :phone, :siblings )
      end

    end
  end
end
