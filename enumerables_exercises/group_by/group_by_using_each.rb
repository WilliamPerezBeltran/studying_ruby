require "pry"

class GroupByUsingEach 

  def test_group_words_by_length
    words = ["sue", "alice", "steve", "sally", "adam", "fort", "tops", "dog", "cat"]
    grouped = Hash.new {|hash, key| hash[key] = []}
    words.each do |word|
      grouped[word.length] << word
    end
    grouped
    # expected = {3=>["sue", "dog", "cat"], 4=>["adam", "fort", "tops"], 5=>["alice", "steve", "sally"]}
  end

  def test_group_numbers_by_odd_and_even
    numbers = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
    odd_and_even = Hash.new {|hash, key| hash[key] = []}
    numbers.each do |number|
      odd_and_even[number%2]<<number
    end
    odd_and_even
    # binding.pry
    # expected = {1=>[1, 1, 3, 5, 13, 21, 55], 0=>[2, 8, 34]}
  end

  def test_group_words_by_first_letter
    words = ["ant", "axis", "albatross", "bolt", "badge", "butter", "car", "cdr", "column"]
    words_by_first_letter = Hash.new {|hash, key| hash[key] = []}
    words.each do |item|
      words_by_first_letter[item[0]]<<item
    end
    words_by_first_letter
    # expected = {"a"=>["ant", "axis", "albatross"], "b"=>["bolt", "badge", "butter"], "c"=>["car", "cdr", "column"]}
  end

  def test_group_words_by_uniqueness
    words = ["one", "two", "one", "TWO", "three", "one", "three", "three", "three"]
    uniqueness = Hash.new{|hash,key|hash[key]=[]}
    words.each do |item|
      uniqueness[item.downcase]<<item
    end
    uniqueness
    # expected = {"one"=>["one", "one", "one"], "two"=>["two", "TWO"], "three"=>["three", "three", "three", "three"]}
  end

  def test_group_by_number_of_zeros
    numbers = [1, 3, 500, 200, 4000, 3000, 10000, 90, 20, 500000]
    zeros = Hash.new{|hash,key|hash[key]=[]}
    numbers.each do |item|
      zeros[item.to_s.count("0")]<<item
    end
    zeros
    # expected = {0=>[1, 3], 2=>[500, 200], 3=>[4000, 3000], 4=>[10000], 1=>[90, 20], 5=>[500000]}
  end

  def test_group_by_order_of_magnitude
    numbers = [1, 3, 503, 239, 4938, 3932, 19982, 93, 21, 501787]
    
    magnitude = Hash.new{|hash,key|hash[key]=[]}
    numbers.each do |item|
      magnitude[item.to_s.length]<<item
    end
    magnitude
    # expected = {1=>[1, 3], 2=>[93, 21], 3=>[503, 239], 4=>[4938, 3932], 5=>[19982], 6=>[501787]}
  end

end