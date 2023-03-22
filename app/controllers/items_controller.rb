class ItemsController < ApplicationController
def index
    items = Item.order(created_at: :desc).includes(:user)
    render json: items, include: :user
end
end
