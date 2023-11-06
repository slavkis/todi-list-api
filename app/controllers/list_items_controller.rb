# frozen_string_literal: true

class ListItemsController < ApplicationController
  def index
    @list_items = ListItem.all

    render json: @list_items
  end

  def create
    @list_item = ListItem.create!(list_item_params.merge({ done: false }))

    render json: @list_item
  end

  def destroy
    ListItem.find(params[:id]).destroy!

    render status: :ok
  end

  private

  def list_item_params
    params.require(:list_item).permit(:name, :done)
  end
end
