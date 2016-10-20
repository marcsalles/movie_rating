
require 'imdb'
file = IO.read("movies.txt")
titols = file.split("\n")

movies =[]
titols.each do |titol|
  i = Imdb::Search.new(titol)
  movies.push(i.movies[0])
end

bar_height = 10

bar_height.downto(1) do |i|
  print '|'
  movies.each do |m|
   if (m.rating / 10.0 * bar_height >= i)
     print "#"
   else
     print " "
   end
   print '|'
 end
 print "\n"
end

print '-'
for i in 0..movies.size - 1
 print '--'
end

puts

print '|'
for i in 0..movies.size - 1
 print i += 1
 print '|'
end
puts "\n\n"
movies.each_with_index do |m, index|
  puts "#{index+1}. #{m.title}" 
  
end 







