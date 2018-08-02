def is_crypt_solution(crypt, solution)
  h = solution_to_hash(solution)

  a = decrypt(crypt[0], h)
  b = decrypt(crypt[1], h)
  c = decrypt(crypt[2], h)

  return false unless valid_decrypt?(crypt, a, b, c)

  a + b == c
end

def solution_to_hash(solution)
  h = {}
  solution.map { |s| h[s.first] = s.last }
  h
end

def decrypt(str, h)
  str.chars.inject([]) { |arr,v| arr << h[v] }.join.to_i
end

def valid_decrypt?(crypt, a, b, c)
  valid_size?(a, crypt[0]) && valid_size?(b, crypt[1]) && valid_size?(c, crypt[2])
end

def valid_size?(arr, str)
  arr.digits.size == str.size
end
