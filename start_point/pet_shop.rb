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
