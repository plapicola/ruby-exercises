require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class StringTest < Minitest::Test
  def test_1
    name = "alice"
    # In place of the line below, call a method on the name variable
    # defined above to acheive the expected output.
    actual = name.capitalize
    expected = "Alice"

    assert_equal expected, actual
  end

  def test_2
    name = "aLiCe"
    # In place of the line below, call a method to achieve the expected output.
    actual = name.upcase
    expected = "ALICE"

    assert_equal expected, actual
  end

  def test_3
    name = "AlIcE"
    # In place of the line below, call a method to achieve the expected output.
    actual = name.downcase
    expected = "alice"

    assert_equal expected, actual
  end

  def test_4
    rhyme = "peter piper picked a peck of picked peppers"
    # In place of the line below, call a method to achieve the expected output.
    actual = rhyme.reverse
    expected = "sreppep dekcip fo kcep a dekcip repip retep"

    assert_equal expected, actual
  end

  def test_5
    word = "ticking"
    # In place of the line below, call a method to achieve the expected output.
    actual = word.delete("t").insert(0, "k")
    expected = "kicking"

    assert_equal expected, actual
  end

  def test_6
    word = "ticking"
    # In place of the line below, call a method to achieve the expected output.
    actual = word.gsub("tick", "clock")
    expected = "clocking"

    assert_equal expected, actual
  end

  def test_7
    words = "five sleepy kittens"
    # In place of the line below, call a method to achieve the expected output.
    actual = words.gsub("e","*")
    expected = "fiv* sl**py kitt*ns"

    assert_equal expected, actual
  end

  def test_8
    greeting = "Hello!!"
    # In place of the line below, call a method to achieve the expected output.
    actual = greeting.gsub("!!", "!")
    expected = "Hello!"

    assert_equal expected, actual
  end

  def test_9
    greeting = "Hello!!\n"
    # In place of the line below, call a method to achieve the expected output.
    actual = greeting.chomp
    expected = "Hello!!"

    assert_equal expected, actual
  end

  def test_10
    greeting = "Hello!!\n\n"
    # In place of the line below, call a method to achieve the expected output.
    actual = greeting.chomp
    expected = "Hello!!\n"

    assert_equal expected, actual
  end

  def test_11
    rhyme = "eeny, meeny, miny, moe"
    # In place of the line below, call a method to achieve the expected output.
    actual = rhyme.delete("e")
    expected = "ny, mny, miny, mo"

    assert_equal expected, actual
  end

  def test_12
    rhyme = "eeny, meeny, miny, moe"
    # In place of the line below, call a method to achieve the expected output.
    actual = rhyme.delete("aeiou")
    expected = "ny, mny, mny, m"

    assert_equal expected, actual
  end

  def test_13
    greeting = "Hello World!"
    # In place of the line below, call a method to get the number of characters in the string
    actual = greeting.length
    expected = 12

    assert_equal expected, actual
  end

  def test_14
    greeting = "Hello World!\n"
    # In place of the line below, call a method to get the number of characters in the string
    actual = greeting.length
    expected = 13

    assert_equal expected, actual
  end

  def test_15
    greeting = "Hello       World!"
    # In place of the line below, call a method to get the number of characters in the string
    actual = greeting.length
    expected = 18

    assert_equal expected, actual
  end

  def test_16
    greeting = "Hello World!"
    # In place of the line below, call a method to get the number of 'o' in the string
    actual = greeting.count("o")
    expected = 2

    assert_equal expected, actual
  end

  def test_17
    greeting = "Hello World!"
    # In place of the line below, call a method to get the number of vowels in the string
    actual = greeting.count("aeiou")
    expected = 3

    assert_equal expected, actual
  end

  def test_18
    greeting = "Hello World!"
    # In place of the line below, call a method to check if the string includes 'llo'
    actual = greeting.include?("llo")
    expected = true

    assert_equal expected, actual
  end

  def test_19
    greeting = "Hello World!"
    # In place of the line below, call a method to check if the string includes 'lol'
    actual = greeting.include?("lol")
    expected = false

    assert_equal expected, actual
  end

  def test_20
    greeting = "Hello World, my name is"
    name = "Harry Potter"
    # In place of the line below, use string manipulation to combine the
    #greeting and name variables to acheive the expected outcome
    actual = "#{greeting} #{name}"
    expected = "Hello World, my name is Harry Potter"

    assert_equal expected, actual

    # See if you can use another method to achieve the same goal:
    actual = greeting + " " + name
    expected = "Hello World, my name is Harry Potter"

    assert_equal expected, actual

    # Again, using a different method:

    # Returning copy of string to circumvent issue of assignment resulting in
    # modification of original string
    actual = name[0..-1]
    actual.prepend("#{greeting} ")
    expected = "Hello World, my name is Harry Potter"

    assert_equal expected, actual

    # Once more, using a different method:
    actual = greeting[0..-1]
    actual.insert(-1, " #{name}")
    expected = "Hello World, my name is Harry Potter"

    assert_equal expected, actual
  end

  def test_21
    phrase = "   \n  \tto the    moon\n\n\t    "
    # In place of the line below, call a method to acheive the expected outcome
    actual = phrase.lstrip.rstrip
    expected = "to the    moon"

    assert_equal expected, actual
  end

  def test_22
    phrase = "   \n  \tto the    moon\n\n\t    "
    # In place of the line below, call a method to acheive the expected outcome
    actual = phrase.rstrip
    expected = "   \n  \tto the    moon"

    assert_equal expected, actual
  end

  def test_23
    phrase = "   \n  \tto the    moon\n\n\t    "
    # In place of the line below, call a method to acheive the expected outcome
    actual = phrase.gsub(" \n  \t", "")
    expected = "  to the    moon\n\n\t    "

    assert_equal expected, actual
  end
end
