
str = gets
nq = str.split(" ").map{|e|e.to_i}
n = nq[0]
q = nq[1]

follows = Array.new(n+1).map{Array.new(n+1,"N")}

for i in 1 .. q do
  in_str = gets
  log = in_str.split(" ").map{|e|e.to_i}
  case log[0]

  when 1 # follow
    a = log[1]
    b = log[2]
    follows[a][b] = "Y"
    
  when 2 # refollow
    a = log[1]
    followers = follows.transpose[a]
    followers.each.with_index do |e,idx|
      if e == "Y"
        follows[a][idx] = "Y"
      end
    end

  when 3 # followfollow
    a = log[1]
    myfollow = follows[a].map.with_index{ |e,idx| e == "Y" ? idx : nil }.compact
    myfollow.each do |j|
      # followfollow: フォローしている人がフォローしている人
      followfollow = follows[j].map.with_index{ |e,idx| e == "Y" ? idx : nil }.compact
      followfollow.each do |k|
        if k != a then follows[a][k] = "Y" end
      end
    end
  end
end

for i in 1 .. n do
  puts follows[i][1..-1].join
end
