puts "Bem vindo ao jogo da adivinhação"
puts "\nQual é o seu nome?"
nome = gets

puts "\n\n\nComeçaremos o jogos para você, " + nome

puts "\nEscolhendo um número secreto entre 0 e 200..."
numero_secreto = 175
puts "Escolhido... que tal adivinhar hoje nosso número secreto?\n\n\n"

limite_de_tentativas = 5

for  tentativas in 1..limite_de_tentativas

	puts "\n\nTentativa " + tentativas.to_s + "de " + limite_de_tentativas
	puts "Entre com o numero"
	chute = gets
	puts "Será que acertou? você chutou " + chute

	acertou = numero_secreto == chute.to_i

	if acertou
		puts "\nAcertou!"

	else

		maior = numero_secreto > chute.to_i
		if maior
			puts "\nO número secreto é maior!"
		
		else
			puts "O número secreto é menor!"
		end

	end

end