def groupingDishes(dishes)
  # group by ingredient
  grouped_hash = {}
  dishes.each.with_index do |dish, index|
    dish_name = dishes[index].shift
    dishes[index].each do |ingredient|
      grouped_hash[ingredient] = [] unless grouped_hash[ingredient]
      grouped_hash[ingredient] << dish_name
    end
  end

  # remove ingredient with one dish
  grouped_hash.each do |k, _|
    grouped_hash.delete(k) if grouped_hash[k].size == 1
  end

  # transform hash to array of array
  grouped = []
  grouped_hash.each do |k, v|
    grouped << [k, v.flatten.sort].flatten
  end

  # sort by first element lexicographically
  grouped.sort
end
