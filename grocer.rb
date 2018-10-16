require 'pry'

def consolidate_cart(cart)
  cart_hash = {}
  cart.each do |item_hash|
    item_hash.each do |name, info|
      if cart_hash.key?(name)
          cart_hash[name][:count] += 1
      else 
        cart_hash[name] = info
        cart_hash[name][:count] = 1
      end
    end
  end
  cart_hash
end

def apply_coupons(cart, coupons)
    cart.each do |name, details|
      coupons.each do |coupon|
        binding.pry
        if name == coupon[:item]
          # cart["#{name} W/COUPON"] = coupon_details
          
        end
      end
    end
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
