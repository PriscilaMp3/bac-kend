require 'spec_helper'
require_relative '../enumerable_exercises'

RSpec.describe 'Enumerable Exercises' do
  describe 'display current inventory exercise' do

    it 'outputs each inventory item' do
      expect($stdout).to receive(:puts).with("apples, quantity: 1")
      expect($stdout).to receive(:puts).with("bananas, quantity: 3")
      expect($stdout).to receive(:puts).with("oranges, quantity: 7")
      fruit = { apples: 1, bananas: 3, oranges: 7 }
      display_current_inventory(fruit)
    end

    # remove the 'x' from the line below to unskip the test
    it 'outputs item without quantity when value is nil' do
      expect($stdout).to receive(:puts).with("pineapples, quantity: ")
      fruit = { pineapples: nil }
      display_current_inventory(fruit)
    end
  end
  
  describe 'display guess order exercise' do
    
    xit 'outputs each guess of strings in order' do
      expect($stdout).to receive(:puts).with("Guess #1 is cookies")
      expect($stdout).to receive(:puts).with("Guess #2 is cake")
      expect($stdout).to receive(:puts).with("Guess #3 is ice cream")
      guesses = ['cookies', 'cake', 'ice cream']
      display_guess_order(guesses)
    end

    xit 'outputs each guess of integers in order' do
      expect($stdout).to receive(:puts).with("Guess #1 is 553")
      expect($stdout).to receive(:puts).with("Guess #2 is 554")
      expect($stdout).to receive(:puts).with("Guess #3 is 555")
      guesses = [553, 554, 555]
      display_guess_order(guesses)
    end
  end

  describe 'find absolute values exercise' do
    
    xit 'returns an array of positive integers' do
      numbers = [0, -7, 14, -21]
      result = [0, 7, 14, 21]
      expect(find_absolute_values(numbers)).to eq(result)
    end

    xit 'returns an array of positive floating point numbers' do
      numbers = [-3.14, 6.28, -9.42]
      result = [3.14, 6.28, 9.42]
      expect(find_absolute_values(numbers)).to eq(result)
    end
  end

  describe 'find low inventory exercise' do
    
    xit 'returns a hash with integer values' do
      fruit = { apples: 1, peaches: 4, bananas: 3, oranges: 7 }
      result = { apples: 1, bananas: 3 }
      expect(find_low_inventory(fruit)).to eq(result)
    end

    xit 'returns a hash with floating point number values' do
      cakes = { chocolate_cake: 2.5, vanilla_cake: 4.25, carrot_cake: 3.75 }
      result = { chocolate_cake: 2.5, carrot_cake: 3.75 }
      expect(find_low_inventory(cakes)).to eq(result)
    end
  end

  describe 'find word length exercise' do
    
    xit 'returns a hash with rocket syntax when using strings' do
      animals = ['cat', 'horse', 'rabbit', 'deer']
      result = { 'cat' => 3, 'horse' => 5, 'rabbit' => 6, 'deer' => 4 }
      expect(find_word_lengths(animals)).to eq(result)
    end
    
    xit 'returns a hash with symbols syntax when using symbols' do
      animals = [:cat, :horse, :rabbit, :deer]
      result = { cat: 3, horse: 5, rabbit: 6, deer: 4 }
      expect(find_word_lengths(animals)).to eq(result)
    end
  end

  describe 'coffee drink exercise' do

    xit 'returns true when coffee is included' do
      drink_list = ["coffee", "water", "tea"]
      expect(coffee_drink?(drink_list)).to be true
    end

    xit 'returns true when espresso is included' do
      drink_list = ["milk", "juice", "espresso"]
      expect(coffee_drink?(drink_list)).to be true
    end

    xit 'returns false when coffee or espresso is not included' do
      drink_list = ["tea", "water", "milk"]
      expect(coffee_drink?(drink_list)).to be false
    end

    xit 'returns false when the list is empty' do
      drink_list = []
      expect(coffee_drink?(drink_list)).to be false
    end
  end

  describe 'correct guess exercise' do

    xit 'returns true when the list contains the answer' do
      guess_list = [2, 3, 4, 5]
      answer = 5
      expect(correct_guess?(guess_list, answer)).to be true
    end

    xit 'returns false when the list does not contain the answer' do
      guess_list = [6, 7, 8, 9]
      answer = 5
      expect(correct_guess?(guess_list, answer)).to be false
    end

    xit 'returns false when the list is empty' do
      guess_list = []
      answer = 5
      expect(correct_guess?(guess_list, answer)).to be false
    end
  end

  describe 'twenty-first century years exercise' do

    xit 'returns true when all of the years are between 2001 and 2100' do
      year_list = [2001, 2002, 2099, 2100]
      expect(twenty_first_century_years?(year_list)).to be true
    end

    xit 'returns false when some of the years are not between 2001 and 2100' do
      year_list = [2000, 2042, 2084, 2101]
      expect(twenty_first_century_years?(year_list)).to be false
    end

    xit 'returns true when the list is empty' do
      year_list = []
      expect(twenty_first_century_years?(year_list)).to be true
    end
  end

  describe 'correct format exercise' do

    xit 'returns true when none of the words in the list are in upcase' do
      word_list = ["Pepsi", "Coke", "Dr. Pepper"]
      expect(correct_format?(word_list)).to be true
    end

    xit 'returns false when at least one word in the list is in upcase' do
      word_list = ["PEPSI", "Coke", "Dr. Pepper"]
      expect(correct_format?(word_list)).to be false
    end

    xit 'returns true when the list is empty' do
      word_list = []
      expect(correct_format?(word_list)).to be true
    end
  end

  describe 'valid scores exercise' do

    xit 'returns true when only one score is a 10' do
      score_list = { easy_to_read: 10, uses_best_practices: 8, clever: 7 }
      perfect_score = 10
      expect(valid_scores?(score_list, perfect_score)).to be true
    end

    xit 'returns false when more than one score is a 10' do
      score_list = { easy_to_read: 10, uses_best_practices: 10, clever: 9 }
      perfect_score = 10
      expect(valid_scores?(score_list, perfect_score)).to be false
    end

    xit 'returns false when the list is empty' do
      score_list = {}
      perfect_score = 10
      expect(valid_scores?(score_list, perfect_score)).to be false
    end
  end
end