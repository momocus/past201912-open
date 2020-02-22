str = gets
numary = str.split(" ").map(&:to_i).sort
puts numary[3]
