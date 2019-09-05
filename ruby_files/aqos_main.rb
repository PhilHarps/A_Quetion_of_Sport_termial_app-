
require "colorize"
require "artii" 
require_relative "aqos_uk_quiz" 
require_relative "aqos_qanda" 


def showWelcome
    line1 = Artii::Base.new :font => 'doom'
    line1 = line1.asciify ("A Question") 
    line2 = Artii::Base.new :font => 'doom'
    line2 = line2.asciify("Of Sport!") 
    line3 = Artii::Base.new :font => 'doom'
    line3 = line3.asciify("Play?  y  for yes,  n  for no!")

    puts ("#{line1}").colorize(:green)
    puts ("#{line2}\n").colorize(:red)
    puts ("#{line3}\n").colorize(:blue)

    loop do # loops thru given input "y" or "yes" starts the game "n" or "no" exits the game, any other key will get an invalid error.
        input = gets.chomp 
        case input.downcase
            when "y", "yes"
                UK_QUIZ.startQuiz #starts game
                break
            when "n", "no"
                #quit game
                puts "GOODBYE!"
                exit
            else
                puts "Invalid entry"
                puts ("#{line3}\n").colorize(:blue) #loops back to prompt
        end
    end
end

showWelcome #calling showWelcome method








