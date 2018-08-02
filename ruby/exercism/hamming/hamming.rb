class Hamming

  def self.compute(str1, str2)
    raise ArgumentError unless str1.size == str2.size
    counter, a, b = 0, str1.split(""), str2.split("")
    a.each_with_index { |c,i| if a[i] != b[i] then counter += 1 end }
    counter
  end

end


module BookKeeping
  VERSION = 3
end
