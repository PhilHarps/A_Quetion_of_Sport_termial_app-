
require "colorize"
require "artii"
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

    loop do
        input = gets.chomp
        case input.downcase
            when "y", "yes"
                quizGame = QuizGame.new
                quizGame.startQuiz
                break
            when "n", "no"
                #quit game
                puts "GOODBYE!"
                exit
            else
                puts "Invalid entry"
                puts ("#{line3}\n").colorize(:blue)
        end
    end
end

showWelcome








