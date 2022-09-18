
 def line (deli)
    if deli.length==0
        puts "The line is currently empty."
    else
        puts "The line is currently: #{deli.map.with_index {|p,i|"#{i+1}. #{p}"}.join(" ")}"
    end
end
puts line(["me","you"])

def take_a_number(deli,name)
    deli.push(name) if !deli.include?(name)
    puts "Welcome, #{name}. You are number #{(deli.index(name))+1} in line."
end
def now_serving(deli)
    if deli.empty?
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{deli[0]}."
        deli.shift
    end
end