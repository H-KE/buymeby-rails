class CartController < ApplicationController
  def populate
    @populated_cart = cart_params.to_h.reduce([]) do |populated_cart, (vendor_id, items)|
      vendor = Vendor.find(vendor_id)
      vendor_hash = vendor.serializable_hash
      vendor_hash["items"] = Item.find(items.keys).as_json
      populated_cart.push(vendor_hash)
    end
  end

  def cart_params
    params.require(:cart).permit!
  end
end