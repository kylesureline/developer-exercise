class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    str = str.gsub(/[a-z]{5,}/, "marklar")
    str = str.gsub(/[A-Z][a-z]{4,}/, "Marklar")
    return str
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    sum = 0
    x = 0
    y = 1
    z = 1
    i = 0
    while i < nth
      x = y
      y = z
      z = x + y
      if x % 2 == 0
        sum += x
      end
      i += 1
    end

    return sum
  end

end
