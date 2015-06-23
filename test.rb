size = gets.split(" ").map(&:to_i)
transform = Array.new(size[2])
transform.each_index{|i| transform[i] = Array.new(size[1], false)}
size[2].times{|h|
  puts h
  size[0].times{|x|
    line = gets.split(//)
    line.each_index{|y|
      transform[size[2]-h-1][y] = true if line[y] == "#"
    }
  }
  gets
}
transform.each{|t|
  t.each{|v|
    print v ? '#' : '.'
  }
  puts
}
