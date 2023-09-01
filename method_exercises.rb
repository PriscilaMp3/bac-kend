# Since lesson #8 is on methods, you will be writing the entire method.
# To gain more familiarity, look up the documentation for each hint.
# Remember to unskip the corresponding tests one at a time.

# method name: #ascii_translator
# parameter: number (an integer)
# return value: the number's ASCII character (https://www.ascii-code.com/)
# hint: use Integer#chr

def ascii_translator(number)
    character = number.chr 
    character  
    end
    
    puts ascii_translator(65)
    puts ascii_translator(105)


# method name: #common_sports
# parameters: current_sports and favorite_sports (both arrays)
# return value: an array containing items in both arrays
# hint: use Array#intersection

def common_sports(current_sports, favorite_sports)
    common = current_sports & favorite_sports
    common
end

current_sports = ["soccer", "tennis", "swimming", "volleyball"]
favorite_sports = ["soccer", "tennis"]
common_sports_list = common_sports(current_sports, favorite_sports)
puts common_sports_list


# method name: #alphabetical_list
# parameter: games (an array)
# return value: games, alphabetically sorted and duplicates removed
# hint: chain Array#sort and Array#uniq together

def alphabetical_list (games)
return games.sort.uniq
end

games =["soccer", "rugby", "boxing", "skating", "rugby"]

puts alphabetical_list(games)

# method name: #lucky_number
# parameter: number (an integer) with default value of 7
# return value: a string "Today's lucky number is <number>"

def lucky_number(number= 7)

lucky = "Today's lucky number is #{number}"
lucky

end
puts lucky_number



# method name: #ascii_code
# parameter: character (a string)
# return value: the character's ordinal number
# explicit return value: 'Input Error' if character's length does not equal 1
# hint: use String#ord


def ascii_code(character)
    return unless character.length == 1
    chain = character.ord
end

puts ascii_code('a')
puts ascii_code('*')
puts ascii_code('*')
puts ascii_code('$')



# method name: #pet_pun
# parameter: animal (a string)
# return value: nil
# console output: if animal is 'cat', 'Cats are purr-fect!' (perfect)
# console output: if animal is 'dog', 'Dogs are paw-some!' (awesome)
# console output: otherwise, "I think <animal>s have pet-tential!" (potential)
# hint: use puts

# def pet_pun (animal)
#     if == 'cat '
#         puts 'Cats are purr-fect!'
#     when 'dog '
#         puts 'Dogs are paw-some!'
#     when '' 
#         puts 'I think <animal>s have pet-tential'
#     end

# method name: #twenty_first_century?
# parameter: year (an integer)
# return value: true if the year is between 2001 - 2100, otherwise return false
# hint: use Comparable#between?
