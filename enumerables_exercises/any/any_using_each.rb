require "pry"

class AnyUsingEach

  def test_has_at_least_one_zero
    numbers = [2, 0, 9, 3, 0, 1]
    has_zero = false
    numbers.each do |number|
      has_zero = true if number.zero?
    end
    has_zero
    # rta true
  end

  def test_does_not_have_any_zeros
    numbers = [3, 1, 3, 2, 4, 9, 8]
    has_zero = false
    numbers.each do |number|
       has_zero = true if number.zero?
    end
    has_zero
  end

  def test_has_at_least_one_alice
    names = ["Bill", "Bob", "Burton", "Alice", "Brandon"]
    has_alice = false
    names.each do |name|
       has_alice = true if name == "Alice"
    end
    has_alice
  end

  # def test_no_alices
  #   names = ["Chuck", "Charlene", "Cory", "Chris", "Carl"]
  #   # Your code goes here
  #   refute has_alice
  # end

  # def test_has_a_multi_word_phrase
  #   phrases = ["Sure!", "OK.", "I have no idea.", "Really?Whatever."]
  #   # Your code goes here
  #   assert has_multi_word_phrase
  # end

  # def test_no_monkeys
  #   animals = ["elephant", "hippo", "jaguar", "python"]
  #   # Your code goes here
  #   refute has_monkeys
  # end

  # def test_no_multiples_of_five
  #   numbers = [3, 1, 3, 2, 4, 9, 8]
  #   # Your code goes here
  #   refute multiples_of_5
  # end

end