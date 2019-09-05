require "colorize"

class QandA
    attr_accessor :question, :answer
    def initialize (q_and_as)
        @q_and_as = q_and_as
    end

    def startQuiz # method that loops thru the questions, keeps your score and tells the score at the end of the game
        
        score = 0
        for qanda in @q_and_as
            puts qanda[:question]
            answer = ""
            until ('a'..'d').include? answer
                answer = gets.chomp()
                if not ('a'..'d').include? answer
                    puts "Invalid Entry, try again!".colorize(:red)
                end
            end
            if answer == qanda[:answer]
                score += 1
            end
        end
        puts ("You got " + score.to_s + " out of " + @q_and_as.length().to_s + " WELL DONE!!!").colorize(:blue)
    end
end