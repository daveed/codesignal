def first_not_repeating_character(s)
  s.split('').group_by { |e| e }.select { |k, v| v.size == 1 }.keys.first || "_"
end
