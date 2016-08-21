def boas_vindas

	puts "Bem vindo ao jogo da adivinhação"
	puts "\nQual é o seu nome?"
	nome = gets.strip
	puts "\n\n\nComeçaremos o jogos para você, #{nome}"

	return nome

end

def pede_dificuldade

	puts "Qual o nivel de dificuldade que deseja? (1 fácil, 5 difícil)"

	dificuldade = gets.to_i
end
def sorteia_num_secreto(dificuldade)
	
	case dificuldade

		when 1
			maximo = 30
		when 2
			maximo = 60
		when 3
			maximo = 100
		when 4
			maximo = 150
		else
			maximo = 200		
			
	end
	

	puts "\nEscolhendo um número secreto entre 1 e #{maximo}..."
	sorteado = rand(maximo) +1
	puts "Escolhido... que tal adivinhar hoje nosso número secreto?\n\n\n"

	return sorteado
end

def pede_um_numero(chutes, tentativas, limite_de_tentativas)
#nTentativa " + tentativas.to_s + " de " + limite_de_tentativas.to_s
	puts "\nTentativa #{tentativas} de #{limite_de_tentativas}"
	puts "Chutes até agora: #{chutes} "
	puts "Entre com o numero"
	chute = gets.strip
	puts "Será que acertou? você chutou #{chute}"

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
	 false	
end
def joga(nome, dificuldade)
	numero_secreto = sorteia_num_secreto dificuldade

	pontos_ate_agora = 1000
	limite_de_tentativas = 5
	chutes = []

	for  tentativas in 1..limite_de_tentativas

		chute = pede_um_numero(chutes, tentativas, limite_de_tentativas)
		chutes << chute

		if nome == "Nikolai"
			puts "Acertou!"
			break		
		end

		pontos_a_perder = (chute - numero_secreto).abs / 2.0
		pontos_ate_agora -= pontos_a_perder

		if verifica_se_acertou(numero_secreto, chute)
			break
		end
	end
	puts "Você ganhou #{pontos_ate_agora} pontos."

end
def quer_jogar
	puts "Deseja jogar novamente? (S/N)"
	quer_jogar = gets.strip
	quer_jogar.upcase == "S"
	
end
nome = boas_vindas
dificuldade = pede_dificuldade

while quer_jogar
	joga nome, dificuldade
end