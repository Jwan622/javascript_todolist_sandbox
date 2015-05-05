class ListsController < ApplicationController
  def index
    @incomplete_list = List.find_by(type: "incomplete")
    @complete_list = List.find_by(type: "complete")
  end
end
