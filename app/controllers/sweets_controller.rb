class SweetsController < ApplicationController
  def index
    @sweets = Sweet.all
  end

  def new
    @sweet = Sweet.new
  end

  def show
    @sweet = Sweet.find(params[:id])
  end

  def create
    @sweet = Sweet.create(vendor_params)
  end


private

  def sweet_params
    params.require(:sweet).permit(:name)
  end
end
