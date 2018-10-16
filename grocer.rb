require 'pry'

def consolidate_cart(cart)
  cart_hash = {}
  cart.each do |item_hash|
    item_hash.each do |name, info|
      if cart_hash.key?(name)
        if cart_hash[name].key?(count)
          cart_hash[name][count] += 1
        else cart_hash[name]= {count => 1}
        end
      else 
        cart_hash[name] = info
      end
    end
  end
  binding.pry
  cart_hash
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
