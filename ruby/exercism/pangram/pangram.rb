class Pangram

  def self.is_pangram?(str)
    (('a'..'z').to_a - str.downcase.chars).empty?
  end

end

module BookKeeping
  VERSION = 2
end
