def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
#   people.each do |person|
#   puts "#{person[:name]}: #{person[:occupation]}"
# end

 output = nil
  
collection.each do |hashes|
      if hashes[:item] == name
        output = hashes
      end
    end
output
end



def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  new_cart = []
  counter = 0 
  while counter < cart.count 
  new_cart_item = find_item_by_name_in_collection(cart[counter][:item], new_cart)
  if new_cart_item != nil
    new_cart_item[:count] += 1
  else
    new_cart_item = {
      :item => cart[counter][:item],
      :price => cart[counter][:price],
      :clearance => cart[counter][:clearnace],
      :count => 1
    }
  new_cart << new_cart_item
end
counter += 1
end
end
  
  

#   new_cart = {}
  
# cart.each do |hashes|
#   hashes.each do |name, info|
#     if new_cart.include?(name)
#       new_cart[name][:count] += 1 
#     else
#       new_cart[name] = {
#         :price => info[:price],
#         :clearance => info[:clearance],
#         :count => 1
#       }
#       end
#     end
#   end
#   new_cart
# end


  