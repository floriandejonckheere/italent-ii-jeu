class CardsetsController < ApplicationController

  def index
    @cardsets = Cardset.all
  end

  def new
    @cardset = Cardset.new
  end

  def create
    @cardset = Cardset.new(params[:cardset].permit(:title))
    if @cardset.save
      redirect_to cardsets_path
    else
      render 'new'
    end
  end

  def edit
    @cardset = Cardset.find(params[:id])
  end

  def update
    @cardset = Cardset.find(params[:id])

    if @cardset.update(params[:cardset].permit(:title))
      redirect_to cardsets_path
    else
      render 'edit'
    end
  end

  def destroy
    @cardset = Cardset.find(params[:id])
    @cardset.destroy

    redirect_to cardsets_path
  end

  def show
    @cardset = Cardset.find(params[:id])
  end

end
