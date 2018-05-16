(1..100).each do |number|
  case 0
  when number % 35
    value = "Nama Team"
  when number % 7
    value = "Team"
  when number % 5
    value = "Nama"
  else
    value = number
  end

  unless number == 100 
    print value, ","
  else
    print value
  end
end

puts 
puts "com recursão"

def nama_team_recursion(number)
  
  case 0
  when number % 35
    value = "Nama Team"
  when number % 7
    value = "Team"
  when number % 5
    value = "Nama"
  else
    value = number
  end
  
  if number != 1
    nama_team_recursion(number - 1);
  end
  
  if number != 100
    print value , ","
  else
    print value
  end
end

nama_team_recursion(100)