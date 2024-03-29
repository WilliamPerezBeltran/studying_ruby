require 'pry'

class SortByPatternTest 

  def test_sort_alphabetically
    words = ["broccoli", "Carrots", "FISH", "Bacon", "candy"]
    transformed = []
    words.each do |item|
      transformed<<[item.downcase,item]
    end
    sorted = []
    transformed = transformed.sort
    transformed.each do |a,b|
      sorted<<b
    end 
    sorted
  end

  def test_sort_alphabetically_by_last_letter
    items = ["pill", "box", "glass", "water", "sponge"]
    transformed = []
    items.each do |item|
      transformed<<[item[item.length-1],item]
    end
    transformed = transformed.sort
    sorted = []
    transformed.each do |a, b|
      sorted << b
    end
    sorted
    # assert_equal ["sponge", "pill", "water", "glass", "box"], sorted
  end

  def test_sort_by_distance
    distances = ["1cm", "9cm", "3cm", "4cm", "2cm"]
    transformed = []
    distances.each do |item|
      transformed<<[item[0],item]
    end
    transformed = transformed.sort
    sorted = []
    transformed.each do |a,b|
      sorted<<b
    end
    sorted
  end

   def test_sort_by_distance_2
    distances = ["1cm", "9cm", "30cm", "4cm", "2cm"]
    transformed = []
    distances.each do |item|
      transformed<<[item.to_i,item]
    end
    transformed = transformed.sort
    sorted = []
    transformed.each do |a, b|
      sorted << b
    end
    sorted
    # assert_equal ["1cm", "2cm", "4cm", "9cm", "30cm"], sorted
  end

  def test_sort_by_length
    words = ["heteromorph", "ancyloceratina", "bioengineering", "mathematical", "bug"]
    transformed = []
    words.each do |item|
      transformed<<[item.length,item]
    end
    # transformed = transformed.sort
    transformed.sort!
    sorted  = []
    transformed.each do |a,b|
      sorted<<b
    end
    sorted
    # assert_equal ["bug", "heteromorph", "mathematical", "ancyloceratina", "bioengineering"], sorted
  end

  def test_sort_by_proximity_to_ten
    prices = [3.02, 9.91, 17.9, 10.01, 11.0]
    transformed = []
    prices.each do |price|
      transformed<<[((10.0-price).abs),price]
    end
    transformed.sort!
    sorted = []
    transformed.each do |a,b|
      sorted<<b
    end
    sorted
    # assert_equal [10.01, 9.91, 11.0, 3.02, 17.9], sorted
  end

  def test_sort_by_number_of_cents
    prices = [3.02, 9.91, 7.9, 10.01, 11.0]
    transformed = []
    prices.each do |price|
      transformed<<[price.to_s.split(".")[1],price]
    end
    transformed.sort!
    sorted = []
    transformed.each do |a,b|
      sorted<<b
    end
    sorted
    # assert_equal [11.0, 10.01, 3.02, 7.9, 9.91], sorted
  end

end