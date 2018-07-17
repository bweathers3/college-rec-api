module Api
  module V1
    class UserController < ApplicationController

      before_action :set_user, only: [ :show ]

      def index
        render json: User.all
      end

      def create
        @user = User.create(user_params)
        if @user.save
          render json: @user, status: 201
        else
          render json: { errors: @user.errors.full_messages }, status: 422
        end
      end

      def show
        if @user
          render json: @user
        else
          user.create
          render json: @user
        end
      end

      private
        def set_user
          @user = User.find(params[ :accountToken ])
        end

        def user_params
          params.require( :user ).permit( :accountToken )
        end
    end
  end
end
