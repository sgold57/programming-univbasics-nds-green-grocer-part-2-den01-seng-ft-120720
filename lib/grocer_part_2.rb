require_relative './part_1_solution.rb'
require 'pry'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  coupons.each do |coupon_item|
    item4markdown = find_item_by_name_in_collection(coupon_item[:item], cart)
    binding.pry
    if item4markdown
      item4markdown[:count] = item4markdown[:count] - coupon_item[:num]
      binding.pry
      cart << {
        :item => "#{item4markdown[:item]} W/ COUPON",
        :price => (coupon_item[:cost] / coupon_item[:num]).round(2),
        :clearance => item4markdown[:clearance],
        :count => coupon_item[:num]
      }
    end
  end
  cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
