
require_relative "aqos_qanda"

eq1 = "Who won the Soccer World Cup in 1966?\n(a) Brazil\n(b) Argentina\n(c) England\n(d) France"
eq2 = "What horse has won the most Grand Nationals?\n(a) Red Rum\n(b) Tiger Roll\n(c) Rhyme or Reason\n(d) Mr Frisk"
eq3 = "Who has won the most British Grand Prix?\n(a) Ayrton Senna\n(b) Nigel Mansell\n(c) Lewis Hamilton\n(d) James Hunt"
eq4 = "What year was the first Wimbledon Tennis Championships held?\n(a) 1856\n(b) 1877\n(c) 1929\n(d) 1954"
eq5 = "Which English soccer team is the only team to go unbeaten throughout a premiership season?\n(a) Man Utd\n(b) Chelsea\n(c) Liverpool\n(d) Arsenal"
eq6 = "Who has won the most Golf British Opens?\n(a) Tiger Woods\n(b) Harry Vardon\n(c) Jack Nicklaus\n(d) Nick Faldo"
eq7 = "Who was the first athlete to break the four minute mile?\n(a) Roger Bannister\n(b) Seb Coe\n(c) Steve Ovett\n(d) Steve Cram"
eq8 = "Which County are the Cheese Rolling Championships held?\n(a) Leicester\n(b) Gloucester\n(c) Cheshire\n(d) Derbishire"
eq9 = "Who won the 2019 London Marathon?\n(a) Eliud Kipchoge\n(b) Mo Farah\n(c) Haile Gebrselassie\n(d) Daniel Wanjiru"
eq10 = "What year did the English Premier league start?\n(a) 1982\n(b) 1992\n(c) 2002\n(d) 2012"

q_and_as = [                        
    {question: eq1, answer: "c"},
    {question: eq2, answer: "a"},
    {question: eq3, answer: "c"},
    {question: eq4, answer: "b"},
    {question: eq5, answer: "d"},
    {question: eq6, answer: "b"},
    {question: eq7, answer: "a"},
    {question: eq8, answer: "b"},
    {question: eq9, answer: "a"},
    {question: eq10,answer:  "b"}
]                                       

UK_QUIZ = QandA.new(q_and_as)