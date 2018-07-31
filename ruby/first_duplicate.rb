def first_duplicate(a)
  h = {}
  a.each do |e|
    return e if h[e]
    h[e] = 1
  end
  return -1
end
