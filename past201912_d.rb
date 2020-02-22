str = gets
idx = str.to_i
in_ary = Array.new(idx)
for i in 1 .. idx do
  in_str = gets
  in_ary[i-1] = in_str.to_i
end

jdg_ary = Array.new(idx,nil)

is_correct = true
dup = nil
for i in 1 .. idx do
  val = in_ary[i-1]
  if jdg_ary[val-1].nil?
    jdg_ary[val-1] = val
  else  
    dup = val
  end
end

if dup.nil?
  puts "Correct"
else
  husoku = jdg_ary.find_index(nil) + 1
  printf("%d %d\n",dup,husoku)
end

