class VendorSweetsController < ApplicationController

  def index
    @vendor_sweets = VendorSweet.all
  end 

  def new
    @vendor_sweet = VendorSweet.new
  end 

  def create
    @vendor_sweet = VendorSweet.create(vendor_sweet_params)
    redirect_to vendors_path
  end 


  def edit
    @vendor_sweet = VendorSweet.find(params[:id])
    @vendor_sweet.update(vendor_sweet_params)
  end 

  private
  def vendor_sweet_params
    params.require(:vendor_sweet).permit(:price, :sweet_id, :vendor_id)
  end 

end
