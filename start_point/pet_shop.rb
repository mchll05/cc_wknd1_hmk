def pet_shop_name(name)
  return name[:name]
end
#
#
def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end
#
#
def add_or_remove_cash(pet_shop, cash)
   pet_shop[:admin][:total_cash] += cash
end
#
#
def pets_sold(pet_shop)
return pet_shop[:admin][:pets_sold]
end
#
#
def increase_pets_sold(pet_shop, pets_sold)
  pet_shop[:admin][:pets_sold] += pets_sold
end
#
#
def stock_count(pet_shop)
  return pet_shop[:pets].length
end

def pets_by_breed(pet_shop, breed)        # This was trouble, need to study specifically
  breed_types = []
for pet in pet_shop[:pets]
if pet[:breed] == breed
 breed_types.push(pet[:name])
 end
  end
return breed_types
end


def find_pet_by_name(pet_shop, name)
name_found = Hash.new
for pets in pet_shop[:pets]
  if pets[:name] == name
    name_found[:name] = name
  end
end
  return name_found unless name_found.empty?
end


def remove_pet_by_name(pet_shop, name)
pet_shop[:pets].delete_if {|pet| pet[:name] == name}
end


def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end


def customer_pet_count(customer) #Need to understand why @ was used here and not elsewhere
total_pet_count = []
  for customer in @customers
    for pet in customer[:pets]
      total_pet_count.push(pet)
    end
  end
  return total_pet_count.length
end


def add_pet_to_customer(customer_pet_count, new_pet)
  return customer_pet_count[:pets].push(new_pet).length
end

######## OPTIONAL ########

def customer_can_afford_pet(customer, new_pet)
customer[:cash] >= new_pet[:price]
end


def sell_pet_to_customer(pet_shop, pet, customer)
pet_shop[:pets].delete_if {|pet| pet[:name] == name}
for pet in pet_shop[:admin][:pets_sold]
pet_shop[:admin][:total_cash] += pet_shop[:pets][:price]


# customer[:pets] += pet
# pet_shop[:admin][:pets_sold] += pets_sold
# pet_shop[:admin][:total_cash] += pet_shop[:pets][:price]
end

  # def test_sell_pet_to_customer__pet_found
  #   customer = @customers[0]
  #   pet = find_pet_by_name(@pet_shop,"Arthur") D
  #   sell_pet_to_customer(@pet_shop, pet, customer)
  #   assert_equal(1, customer_pet_count(customer))
  #   assert_equal(1, pets_sold(@pet_shop))
  #   assert_equal(1900, total_cash(@pet_shop))
  # end
