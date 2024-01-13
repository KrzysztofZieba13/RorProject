class OffertsController < ApplicationController
  def index
    @offerts = Offert.all
  end

  def show
    @offert = Offert.find(params[:id])
  end

  def new
    @offert = Offert.new 
  end

  def create
    @offert = Offert.new(offert_params)

    if @offert.save
      redirect_to @offert
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @offert = Offert.find(params[:id])
  end

  def update
    @offert = Offert.find(params[:id])

    if @offert.update(offert_params)
      redirect_to @offert
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def offert_params
      params.require(:offert).permit(:title, :body, :phone_number)
    end

end
