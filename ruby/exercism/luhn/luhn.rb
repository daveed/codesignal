class Luhn

  def initialize(num)
    @num = num
  end

  def addends
    arr = []

    @num.to_s.chars.reverse.each_with_index do |n,i|
      n = n.to_i
      if i % 2 != 0
        n *= 2
        if n >= 10
          n -= 9
        end
      end
      arr.unshift(n)
    end

    arr
  end

  def checksum
    addends.reduce(:+)
  end

  def valid?
    checksum % 10 ? true : false
  end

  def self.create(num)
    if new(num).valid?
      num
    else
      arr = num.to_s.chars
      ("0".."9").each do |n|
        new_num = (arr + [n]).join.to_i
        return new_num if new(new_num).valid?
      end
    end
  end

end
