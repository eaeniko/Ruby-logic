puts 175 == 175 
puts 175 == 174
puts "175" == 175
puts "175" == "175"
puts "175".to_i == 175


for dedos in 1..3
	puts "Contando..." + dedos.to_s

end
puts "\n\n"

chutes = []

chute = 176
tentativa = 1
chutes[tentativa -1] = chute

chute = 100
tentativa = 2
chutes[tentativa -1] = chute

puts chutes[0]
puts chutes[1]

for contador in 1..tentativa
	puts "Chute: " + chutes[contador - 1].to_s
end