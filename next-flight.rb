# YOUR CODE HERE
require 'pry'
flights = [2,5,13,7.5,8.5,9,10,11.5,13.5,14.5,17,18,19,24]
lyrics = """
***DON'T STOP...BELIEVIN'!***

Just a small town girl
Living in a lonely world
She took the midnight train going anywhere
Just a city boy
Born and raised in South Detroit
He took the midnight train going anywhere

A singer in a smoky room
A smell of wine and cheap perfume
For a smile they can share the night
It goes on and on and on and on

Strangers waiting, up and down the boulevard
Their shadows searching in the night
Streetlights people, living just to find emotion
Hiding, somewhere in the night.
"""

time = 0

loop do
  print "What time are you leaving?: "
  time = gets.chomp.to_i
  # binding.pry
  if time != 0
    break
  else
    puts "I do not understand that time!"
    puts
  end
end

flights.sort!

flight_num = 0

flights.each do |flight|
  flight_num += 1
  if flight > time
    puts "Yout should catch Flight #{flight_num} leaving at #{flight}"
    puts lyrics if flight == 24
    break
  end
end
