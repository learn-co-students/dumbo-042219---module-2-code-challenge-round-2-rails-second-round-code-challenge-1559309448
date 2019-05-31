class VendorSweetsController < ApplicationController

  def new
    @vendor_sweet = VendorSweet.new
  end

#   def create
#     @vendor_sweet = VendorSweet.new(vendor_sweet_params)
#     if @vendor_sweet.valid?
#       @vendor_sweet.save
#     redirect_to vendor_path(@vendor_sweet.vendor_id)
#       else
#         @vendor_sweet.errors.each do |error|
#           puts error
#       end
#    end
# end

def create
  @vendor_sweet = VendorSweet.create(vendor_sweet_params)
  redirect_to vendor_path(@vendor_sweet.vendor_id)
end





private

  def vendor_sweet_params
    params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
  end

end
