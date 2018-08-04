def perimeter(n)
  4 * (1..n+1).inject { |acc,v| acc += fib(v) }
end

@cache = [0, 1]
def fib(n)
  @cache[n] ||= fib(n - 1) + fib(n - 2)
end
