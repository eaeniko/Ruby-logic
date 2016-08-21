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
chutes << chute

chute = 100
tentativa = 2
chutes << chute

chute = 150
chutes << chute

puts chutes.size
for chute in chutes
	puts chute
end

puts "\n"

puts "Qual seu nome?"
nome = gets.strip
puts "#{nome} tem #{nome.size} caracteres"
# puts nome + " tem " + nome.size.to_s + " caracteres"
