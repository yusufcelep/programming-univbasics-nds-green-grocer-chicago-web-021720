def find_item_by_name_in_collection(name, collection)
  counter = 0
  while counter < collection.length 
    if collection[counter][:item] == name
      return collection[counter]
    end
    counter += 1 
  end
end

def consolidate_cart(cart)
  new cart = []
  counter = 0 
  while counter < cart.length 
    new_cart_item = find_item_by_name_in_collection(cart[counter][:item], new_cart)
    if new_cart_item != nil 
      new_cart_item[:count] += 1
    else 
      new_cart_item = {
        :item => cart[counter][:item],
        :price => cart[counter][:price],
        :clearance => cart[counter][:clearance],
        :count => 1
      }
     new_cart << new_cart_item
    end
   counter += 1 
end
new_cart
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
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
