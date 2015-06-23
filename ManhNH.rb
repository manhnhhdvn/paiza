xyz = gets.split(" ").map(&:to_i)
x = xyz[0]
y = xyz[1]
z = xyz[2]
resultArray = Array.new(z)
resultArray.each_index{|i| resultArray[i] = Array.new(y,".")}
for i in 0..z-1
 for j in 0..x-1
  line = gets.split(//)
  line.each_index{|k|
      resultArray[z-i-1][k] = "#" if line[k] == "#"
    }
 end
 gets
end
resultArray.each do |item|
  item.each{|i|
    print i
  }
  puts
end
