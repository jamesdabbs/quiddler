require 'pry'

puts "Welcome to Quiddler"

# Note - probably want to define a `score` function to avoid repeating `reduce`
#   everywhere, and so we can fix the `0` issue once and for all
# Also, probably don't want to hardcode the players
players = ["Rachel", "James"]
rachel = []
james  = []

# This would let us pick the first player:
# puts "Who is player 1?"
# p1 = gets.chomp.capitalize
# if p1 == "Rachel"
#   p2 = "James"
# else
#   p2 = "Rachel"
# end

# This lets the computer pick for us
p1, p2 = players.shuffle


3.upto 10 do |n|

  puts "Round #{n}"
  puts "Current scores - Rachel #{rachel.reduce(0, :+)}, James #{james.reduce(0, :+)}"
  if n.even?
    puts "#{p1}'s deal"
  else
    puts "#{p2}'s deal"
  end

  print "What did Rachel get? > "
  score = gets.chomp.to_i
  rachel.push score

  print "What did James get? > "
  score = gets.chomp.to_i
  james.push score

  puts

end

rs = rachel.reduce :+
js = james.reduce :+

puts "Final scores:"
puts "Rachel - #{rs}"
puts "James  - #{js}"

if rs > js
  puts "Rachel wins!"
elsif js > rs
  puts "James wins!"
else
  puts "It's a tie!"
end
