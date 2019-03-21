def groupingDishes(dishes)
  grouped_hash = Hash.new { |h, k| h[k] = Array.new }
  dishes.each.with_index do |dish, index|
    dish_name = dishes[index].shift
    dishes[index].map { |ingredient| grouped_hash[ingredient] << dish_name }
  end

  grouped_hash.map { |k, _| grouped_hash.delete_if { |k, _| grouped_hash[k].size == 1 } }
  grouped_hash.map { |k, v| [k, v.flatten.sort].flatten }.sort
end
