class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def new
    @list = list.new
  end

  def create
    list = list.new(list_params)
    list.save

    redirect_to lists_path
  end
end
