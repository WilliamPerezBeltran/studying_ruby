require "pry"
class SortByTest 

  def test_sort_alphabetically
    words = ["broccoli", "Carrots", "FISH", "Bacon", "candy"]
    words.sort_by{|word| word.downcase}
    # assert_equal ["Bacon", "broccoli", "candy", "Carrots", "FISH"], sorted
  end

  def test_sort_alphabetically_by_last_letter
    things = ["pill", "box", "glass", "water", "sponge"]
    things.sort_by{|item| item[item.length-1]}
    # assert_equal ["sponge", "pill", "water", "glass", "box"], sorted
  end

  def test_sort_by_distance
    distances = ["1cm", "9cm", "30cm", "4cm", "2cm"]
    distances.sort_by{|item| item.to_i}
    # Your code goes here
    # assert_equal ["1cm", "2cm", "4cm", "9cm", "30cm"], sorted
  end

  def test_sort_by_length
    words = ["heteromorph", "ancyloceratina", "bioengineering", "mathematical", "bug"]
    words.sort_by{|word| word.length}
    # Your code goes here
    # assert_equal ["bug", "heteromorph", "mathematical", "ancyloceratina", "bioengineering"], sorted
  end

  def test_sort_by_proximity_to_ten
    prices = [3.02, 9.91, 17.9, 10.01, 11.0]
    prices.sort_by{|price| ((10.0-price).abs) }
    # Your code goes here
    # assert_equal [10.01, 9.91, 11.0, 3.02, 17.9], sorted
  end

  def test_sort_by_number_of_cents
    prices = [3.02, 9.91, 7.9, 10.01, 11.0]
    prices.sort_by{|price| price.to_s.split(".")[1]}
    # Your code goes here
    # assert_equal [11.0, 10.01, 3.02, 7.9, 9.91], sorted
  end

end