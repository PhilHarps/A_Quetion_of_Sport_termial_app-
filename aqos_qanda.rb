require "colorize"

class QandA
    attr_accessor :question, :answer
    def initialize (question, answer)
        @question = question
        @answer = answer
    end
end

class QuizGame

    def initialize

        eq1 = "Who won the Soccer World Cup in 1966?\n(a) Brazil\n(b) Argentina\n(c) England\n(d) France"
        eq2 = "What horse has won the most Grand Nationals?\n(a) Red Rum\n(b) Tiger Roll\n(c) Rhyme or Reason\n(d) Mr Frisk"
        eq3 = "Who has won the most British Grand Prix?\n(a) Ayrton Senna\n(b) Nigel Mansell\n(c) Lewis Hamilton\n(d) James Hunt"
        eq4 = "What year was the first Wimbledon Tennis Championships held?\n(a) 1856\n(b) 1877\n(c) 1929\n(d) 1954"
        eq5 = "Which English soccer team is the only team to go unbeaten throughout a pemiership season?\n(a) Man Utd\n(b) Chelsea\n(c) Liverpool\n(d) Arsenal"
        eq6 = "Who has won the most Golf British Opens?\n(a) Tiger Woods\n(b) Harry Vardon\n(c) Jack Nicklaus\n(d) Nick Faldo"
        eq7 = "Who was the first athlete to break the four minute mile?\n(a) Roger Bannister\n(b) Seb Coe\n(c) Steve Ovett\n(d) Steve Cram"
        eq8 = "Which County are the Cheese Rolling Championships held?\n(a) Leicester\n(b) Gloucester\n(c) Cheshire\n(d) Derbishire"
        eq9 = "Who won the 2019 London Marathon?\n(a) Eliud Kipchoge\n(b) Mo Farah\n(c) Haile Gebrselassie\n(d) Daniel Wanjiru"
        eq10 = "What year did the English Premier league start?\n(a) 1982\n(b) 1992\n(c) 2002\n(d) 2012"

        @question = [
            QandA.new(eq1, "c"),
            QandA.new(eq2, "a"),
            QandA.new(eq3, "c"),
            QandA.new(eq4, "b"),
            QandA.new(eq5, "d"),
            QandA.new(eq6, "b"),
            QandA.new(eq7, "a"),
            QandA.new(eq8, "b"),
            QandA.new(eq9, "a"),
            QandA.new(eq10, "b")
        ]

    end

    def startQuiz
        
        score = 0
        for qanda in @question
            puts qanda.question
            answer = ""
            until ('a'..'d').include? answer
                answer = gets.chomp()
                if not ('a'..'d').include? answer
                    puts "Invalid Entry, try again!".colorize(:red)
                end
            end
            if answer == qanda.answer
                score += 1
            end
        end
        puts ("You got " + score.to_s + " out of " + @question.length().to_s + " WELL DONE!!!").colorize(:blue)
    end
end








