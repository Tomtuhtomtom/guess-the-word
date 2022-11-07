secret_word = "tomato"
guess = ""
hint_number = 1

def gethint(hint_number)
    if hint_number == 1
        puts "People debate if it's a fruit or vegetable"
    elsif hint_number == 2
        puts "It's red"
    elsif hint_number == 3
        puts "It grows on a vine"
    elsif hint_number > 3
        puts "No more hints!"
    end
end

while guess != secret_word
    puts "Enter your guess: "
    guess = gets.chomp()
    if guess != secret_word
        puts "Wrong Answer"
        puts "Try Again"
        puts "Do you want a hint?"
        hint = gets.chomp().downcase
        if hint == "y" or hint == "yes"
            gethint(hint_number)
            hint_number += 1
        end
    end
end

puts "You Won!"