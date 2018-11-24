require 'minitest/autorun'
require 'minitest/pride'

class EnumerablesTest < Minitest::Test
  def test_squares
    numbers = [1, 2, 3, 4, 5]
    actual = numbers.map do |number|
      number ** 2
    end
    assert_equal [1, 4, 9, 16, 25], actual
  end

  def test_find_waldo
    words = ["noise", "dog", "fair", "house", "waldo", "bucket", "fish"]
    actual = words.find do |word|
      word == "waldo"
    end
    assert_equal "waldo", actual
  end

  def test_pick_words_with_three_letters
    words = ["pill", "bad", "finger", "cat", "blue", "dog", "table", "red"]
    actual = words.select {|word| word.length == 3}
    assert_equal ["bad", "cat", "dog", "red"], actual
  end

  def test_normalize_zip_codes
    numbers = [234, 10, 9119, 38881]
    actual = Array.new
    numbers.each do |number|
      zipcode = number.to_s
      missing_digit_count = 5 - zipcode.length
      actual << ("0" * missing_digit_count) + zipcode
    end
    assert_equal ["00234", "00010", "09119", "38881"], actual
  end

  def test_no_waldo
    words = ["scarf", "sandcastle", "flag", "pretzel", "crow", "key"]
    found = words.find do |word|
      word == "waldo"
    end
    assert_nil found
  end

  def test_pick_floats
    numbers = [3, 1.4, 3.5, 2, 4.9, 9.1, 8.0]
    actual = numbers.find_all do |number|
      number.class == Float
    end
    assert_equal [1.4, 3.5, 4.9, 9.1, 8.0], actual
  end

  def test_words_with_no_vowels
    words = ["green", "sheep", "travel", "least", "boat"]
    actual = Array.new
    words.each do |word|
      actual << word.delete("aeiou")
    end
    assert_equal ["grn", "shp", "trvl", "lst", "bt"], actual
  end

  def test_has_at_least_one_zero
    numbers = [2, 0, 9, 3, 0, 1]
    actual = numbers.include?(0)
    assert_equal true, actual
  end

  def test_all_gone
    words = ["gone", "gone", "gone", "gone", "gone", "gone", "gone"]
    actual = true
    words.each do |word|
      actual = actual && word == "gone"
    end
    assert_equal true, actual
  end

  def test_count_numbers_greater_than_17
    numbers = [9, 18, 12, 17, 1, 3, 99]
    actual = 0
    numbers.each do |number|
      if number > 17
        actual += 1
      end
    end
    assert_equal 2, actual
  end

  def test_array_with_the_most_items
    arrays = [[:a, :b, :c], [1, 2, 3, 4, 5], ["zoo", :things, :stuff]]

    actual = Array.new
    arrays.each do |array|
      if actual.length < array.length
        actual = array
      end
    end

    assert_equal [1, 2, 3, 4, 5], actual
  end

  def test_group_words_by_first_letter
    words = ["ant", "axis", "albatross", "bolt", "badge", "butter", "car", "cdr", "column"]
    actual = { "a" => words.find_all {|word| word[0] == "a"}}
    actual["b"] = words.find_all {|word| word[0] == "b"}
    actual["c"] = words.find_all {|word| word[0] == "c"}
    expected = {"a"=>["ant", "axis", "albatross"], "b"=>["bolt", "badge", "butter"], "c"=>["car", "cdr", "column"]}
    assert_equal expected, actual
  end

  def test_none_are_negative
    numbers = [9, 3, 1, 8, 3, 3, 5]
    actual = true
    numbers.each do |number|
      actual = actual && number > 0
    end
    assert true, actual
  end

  def test_one_time
    words = ["morning", "time", "evening", "noon", "dusk", "dawn"]
    actual = words.count("time") == 1
    assert_equal true, actual
  end

  def test_sum_a_list_of_numbers
    numbers = [32, 1, 21, 5, 81, 333]
    # initial value is 0
    actual = numbers.sum
    assert_equal 473, actual
  end

  def test_remove_numbers_divisible_by_3
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
    actual = numbers.delete_if {|number| number % 3 == 0}
    assert_equal [1, 2, 4, 5, 7, 8, 10, 11, 13, 14, 16, 17, 19, 20], actual
  end

  def test_sort_alphabetically
    words = ["broccoli", "Carrots", "FISH", "Bacon", "candy"]
    actual = words

    i = 0
    # Selection sort
    while i < actual.length
      current = i
      j = i
      while j < actual.length
        # Check if new index should come before current
        if actual[current].downcase > actual[j].downcase
          current = j
        end
        j += 1
      end
      # Swap current and starting index
      temp = actual[i]
      actual[i] = actual[current]
      actual[current] = temp
      i += 1
    end
    assert_equal ["Bacon", "broccoli", "candy", "Carrots", "FISH"], actual
  end

  def test_speed_interview_pairs
    list1 = ["Alice", "Bob", "Charlie"]
    list2 = ["Xenia", "Yves", "Zach"]
    actual = Array.new
    i = 0
    while i < list1.length
      actual[i] = [list1[i], list2[i]]
      i += 1
    end
    assert_equal [["Alice", "Xenia"], ["Bob", "Yves"], ["Charlie", "Zach"]], actual
  end

  def test_all_4_letter_words
    words = ["love", "hate", "fire", "bird", "call"]
    actual = true
    words.each {|word| actual = actual && word.length == 4}
    assert_equal true, actual
  end

  def test_has_a_multi_word_phrase
    phrases = ["Sure!", "OK.", "I have no idea.", "Really?Whatever."]
    actual = (phrases.select {|phrase| phrase.include?(" ")}).count > 0
    assert_equal true, actual
  end

  def test_count_words_that_are_uppercase
    words = ["trousers", "SOCKS", "sweater", "Cap", "SHOE", "TIE"]
    actual = 0
    words.each do |word|
      if word.upcase == word
        actual += 1
      end
    end
    assert_equal 3, actual
  end

  def test_smallest_number
    numbers = [1, 10, 100, 1000, 10000, 1000000]

    i = 0
    current = numbers[i]
    while i < numbers.length
      if numbers[i] < numbers[current]
        current = i
      end
      i += 1
    end

    actual = numbers[current]

    assert_equal 1, actual
  end

  def test_most_programmers
    programmers = {ruby: ["katrina", "sandi", "jim", "aaron", "desi"], java: ["abby", "jon", "susan"]}

    longest_team = Array.new

    programmers.each_value do |value|
      if value.length > longest_team.length
        longest_team = value
      end
    end

    actual = [programmers.key(longest_team)] # Not sure what intended format of actual is


    assert_equal :ruby, actual.first
  end

  def test_group_words_by_uniqueness
    words = ["one", "two", "one", "TWO", "three", "one", "three", "three", "three"]
    actual = Hash.new([])
    words.each do |word|
      # Checking if key exists as just shoveling in to array doesnt add key to hash
      if !actual.has_key?(word.downcase)
        actual[word.downcase] = [word]
      else
        actual[word.downcase] << word
      end
    end
    expected = {"one"=>["one", "one", "one"], "two"=>["two", "TWO"], "three"=>["three", "three", "three", "three"]}
    assert_equal expected, actual
  end

  def test_none_are_broken
    things = ["functional", "working", "works", "fixed", "good"]
    actual = !things.include?("broken")
    assert actual
  end

  def test_one_time
    words = ["morning", "time", "evening", "noon", "dusk", "dawn"]
    actual = words.count("time") == 1
    assert actual
  end

  def test_multiply_list_of_numbers
    numbers = [2, 3, 5, 7]
    product = 1
    numbers.each {|number| product *= number}
    actual = product
    assert_equal 210, actual
  end

  def test_remove_words_with_more_than_three_letters
    words = ["pill", "bad", "finger", "cat", "blue", "dog", "table", "red"]
    actual = words.delete_if {|word| word.length > 3}
    assert_equal ["bad", "cat", "dog", "red"], actual
  end

  def test_pick_dinosaurs
    animals = ["tyrannosaurus", "narwhal", "eel", "achillesaurus", "qingxiusaurus"]
    actual = animals.select {|animal| animal.include?("saurus")}
    assert_equal ["tyrannosaurus", "achillesaurus", "qingxiusaurus"], actual
  end

  def test_sort_by_distance
    distances = ["1cm", "9cm", "30cm", "4cm", "2cm"]
    # Strip "cm" by converting to Integer, then sort, and append cm to distances
    actual = distances.map{|distance| distance.to_i}.sort.map{|distance| "#{distance}cm"}
    assert_equal ["1cm", "2cm", "4cm", "9cm", "30cm"], actual
  end

  def test_solitaire
    list1 = ["Ace", "6", "10", "Queen"]
    list2 = [:clubs, :diamonds, :hearts, :spades]
    # Make new empty array, zip with other arrays, then remove the nil values
    actual = Array.new(list1.length).zip(list1, list2).map{|array| array.compact}
    assert_equal [["Ace", :clubs], ["6", :diamonds], ["10", :hearts], ["Queen", :spades]], actual
  end

  def test_all_multiples_of_7
    numbers = [42, 14, 35, 49, 28, 56, 21, 7]
    actual = numbers.select{|number| number % 7 == 0}
    assert actual
  end

  def test_sort_by_number_of_cents
    prices = [3.02, 9.91, 7.9, 10.01, 11.0]
    i = 0
    # Selection sort
    while i < prices.length
      current = i
      j = i
      while j < prices.length
        if (prices[current] - prices[current].to_i) >
           (prices[j] - prices[j].to_i)
              current = j
        end
        j += 1
      end
      temp = prices[i]
      prices[i] = prices[current]
      prices[current] = temp
      i += 1
    end
    actual = prices
    assert_equal [11.0, 10.01, 3.02, 7.9, 9.91], actual
  end

  def test_remove_dinosaurs
    animals = ["tyrannosaurus", "narwhal", "eel", "achillesaurus", "qingxiusaurus"]
    notasaurus = animals.select {|animal| !animal.include?("saurus")}
    assert_equal ["narwhal", "eel"], notasaurus
  end

  def test_remove_hashes
    elements = ["cat", {:dog=>"fido"}, 23, {:stuff=>"things"}, "aimless", 43]
    actual = elements.select {|element| element.class != Hash}
    assert_equal ["cat", 23, "aimless", 43], actual
  end

  def test_capitalize_keywords_in_phrase_one_fish_two_fish_red_fish_blue_fish
    keywords = ["fish", "blue"]
    output = "one fish two fish red fish blue fish"
    output = output.split(" ")
    actual = ""
    output.each do |word|
      if keywords.include?(word)
        word = word.upcase
      end
      actual += word + " "
    end
    actual = actual.rstrip
    assert_equal 'one FISH two FISH red FISH BLUE FISH', actual
  end

  def test_subtract_smallest_values_from_100
    elements = [[8, 5, 3], [1, 9, 11], [4, 7, 2], [19, 34, 6]]
    value = 100
    elements.each do |element|
      i = 0
      minimum = element[0]
      while i < element.length
        if element[i] < minimum
          minimum = element[i]
        end
        i += 1
      end
      value -= minimum
    end
    actual = value
    assert_equal 88, actual
  end

  def test_one_double_digit_number
    numbers = [8, 2, 10, 333, 9, 101]
    actual = numbers.select{|number| number > 10}.count > 0
    assert actual
  end

  def test_group_by_number_of_zeros
    numbers = [1, 3, 500, 200, 4000, 3000, 10000, 90, 20, 500000]
    actual = Hash.new([])
    numbers.each do |number|
      # Convert to String to count "0" characters
      index = number.to_s
      if actual.has_key?(index.count("0"))
        actual[index.count("0")] << number
      else
        actual[index.count("0")] = [number]
      end
    end
    expected = {0=>[1, 3], 2=>[500, 200], 3=>[4000, 3000], 4=>[10000], 1=>[90, 20], 5=>[500000]}
    assert_equal expected, actual
  end

  def test_count_round_prices
    prices = [1.0, 3.9, 5.99, 18.5, 20.0]
    actual = prices.select{|number| number - number.to_i == 0.0}.count
    assert_equal 2, actual
  end

  def test_no_monkeys
    animals = ["elephant", "hippo", "jaguar", "python"]
    actual = animals.count("monkeys") > 0
    refute actual
  end
end
