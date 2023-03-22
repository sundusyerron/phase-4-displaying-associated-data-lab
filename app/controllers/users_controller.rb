class UsersController < ApplicationController
    def show
        usr = User.find(params[:id])
        render json: usr, include: :items
      end
end
