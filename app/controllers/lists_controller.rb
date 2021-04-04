class ListsController < ApplicationController
  def index
    @lists = List.includes(:cards).all
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

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])

    if @list.update(name: params[:list][:name])
      redirect_to lists_path
    else
      render :edit
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy

    redirect_to root_path
  end
end
