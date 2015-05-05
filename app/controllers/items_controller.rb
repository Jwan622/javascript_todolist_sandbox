class ItemsController < ApplicationController
  def update
    item = Item.find(params[:id])
    if item.list.type == "incomplete"
      item.list = List.find_by(type: "complete")
      item.save
    else
      item.list = List.find_by(type: "incomplete")
      item.save
    end
    render nothing: true
  end
end
