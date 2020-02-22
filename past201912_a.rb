
str = gets
jdg = str =~ /[a-zA-Z]/
if jdg.nil?
    num = str.to_i * 2
    puts(num)
else
    puts('error')
end
