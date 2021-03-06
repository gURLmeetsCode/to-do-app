class CardsController < ApplicationController
  def index
  end

  def show
    @card = Card.find(params[:id])
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)

    if @card.save
      redirect_to @card
    else
      render :new
    end
  end

  def edit
    @card = Card.find(params[:id])
  end

  def update
    @card = Card.find(params[:id])

    if @card.update(card_params)
      redirect_to @card
    else
      render :edit
    end
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy

    redirect_to root_path
  end

  private
    def card_params
      params.require(:card).permit(:name, :description, :list_id)
    end
end
