puts "Bem vindo ao jogo da adivinhação"
puts "\nQual é o seu nome?"
nome = gets

puts "\n\n\nComeçaremos o jogos para você, " + nome

puts "\nEscolhendo um número secreto entre 0 e 200..."
numero_secreto = 175
puts "Escolhido... que tal adivinhar hoje nosso número secreto?\n\n\n"

puts "Tentativa 1"
puts "Entre com o numero"
chute = gets
puts "Será que acertou? você chutou " + chute
puts chute.to_i == numero_secreto

