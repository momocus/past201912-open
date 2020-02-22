require 'matrix'

str = gets
idx = str.to_i
inary = Array.new(idx)
for i in 1 .. idx do
  uriage = gets
  inary[i-1] = uriage.to_i
end

yesterday = inary[0 .. -2]
today = inary[1 .. -1]
ary = [yesterday,today].transpose

ary.each do | y,t |
  if y < t
    printf("up %d\n",t-y)
  elsif y > t
    printf("down %d\n",y-t)
  else # y == t
    printf("stay\n")
  end
end
