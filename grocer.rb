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

# cart = {"AVOCADO"=>{:price=>3.0, :clearance=>true, :count=>2}}
# coupons = [{:item=>"AVOCADO", :num=>2, :cost=>5.0}]

def apply_coupons(cart, coupons)
    cart.each do |name, details|
      coupons.each do |coupon|
        if name == coupon[:item] && cart[name][:count] >= coupon[:num]
          
          
          
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
