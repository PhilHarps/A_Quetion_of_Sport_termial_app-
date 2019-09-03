
require "colorize"
require "artii"

line1 = Artii::Base.new :font => 'doom'
line1 = line1.asciify ("A Question") 
line2 = Artii::Base.new :font => 'doom'
line2 = line2.asciify("Of Sport!") 

puts ("#{line1}").colorize(:green)
puts ("#{line2}\n").colorize(:red)




