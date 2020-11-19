class FlatsController < ApplicationController

  def index
    @new_flat =Flat.new
    @flats = Flat.all
    @query = ""
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def search
    @query = params[:search]
    @new_flat =Flat.new
    @flats = Flat.where("name like ?", "%#{@query }%")
    render :index
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flats_path
    else
      render :new
    end
  end

  def flat_params
    params.require(:flat).permit(:name, :address,:description, :price_per_night, :number_of_guests)
  end
end
# t.text "description"
# t.integer "price_per_night"
# t.integer "number_of_guests"
