class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(name: params[:list][:name])

    if @list.save
      redirect_to lists_path
    else
      render :new
    end
  end
end
