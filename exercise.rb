class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    arr = str.split(' ')
    result = arr.map { |el| el.length > 4 ? self.convert_str(el) : el }
    result.join(' ')
  end

  def self.convert_str(str)
    punctuation = ''
    if /\W/.match(str) 
      punctuation = str[-1]
    end 
    str == str.capitalize ? 'Marklar' + punctuation : 'marklar' + punctuation
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    prev_two = [1, 1]
    result = 0

    (3..nth).each do |num| 
      prev_sum = prev_two.reduce(:+)
      result += prev_sum if prev_sum.even?
      prev_two = [prev_two.last, prev_sum]
    end

    result
  end

end
