def boas_vindas

	puts "Bem vindo ao jogo da adivinhação"
	puts "\nQual é o seu nome?"
	nome = gets

	puts "\n\n\nComeçaremos o jogos para você, " + nome

end
def sorteia_num_secreto
	
	puts "\nEscolhendo um número secreto entre 0 e 200..."
	sorteado = 175
	puts "Escolhido... que tal adivinhar hoje nosso número secreto?\n\n\n"

	return sorteado
end

def pede_um_numero(tentativas, limite_de_tentativas)
	puts "\n\nTentativa " + tentativas.to_s + " de " + limite_de_tentativas.to_s
	puts "Entre com o numero"
	chute = gets
	puts "Será que acertou? você chutou " + chute

	return chute.to_i

end

def verifica_se_acertou(numero_secreto, chute)

	acertou = numero_secreto == chute

	if acertou
		puts "\nAcertou!"
		return true

	end

	maior = numero_secreto > chute
	if maior

		puts "\nO número secreto é maior!"		
		else
			puts "O número secreto é menor!"
		end
	end
	 false
	
end

boas_vindas
numero_secreto = sorteia_num_secreto 

limite_de_tentativas = 5

for  tentativas in 1..limite_de_tentativas

	chute = pede_um_numero(tentativas, limite_de_tentativas)

	if verifica_se_acertou(numero_secreto, chute)
		break
	end

end