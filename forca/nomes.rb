def le_nome
	nome = gets
	puts "Lido #{nome}"
	nome
end

def pede_nome
	puts "Digite seu nome"
	nome_lido = le_nome
	puts "Pedido!"
	nome_lido
end

def inicio
	nome = pede_nome
	puts "Bem vindo #{nome}"

	puts "Quero conhecer mais alguém"
	nome2 = pede_nome
	puts "Olá #{nome2}"
end

inicio

# nomes.rb:9 in pede_nome (nome_lido  "João")
# nomes.rb:17 in inicio (nome = "Nikolai")
# nomes.rb:21 in main

# Digite seu nome
# Lido Nikolai
# Pedido!
# Bem vindo Nikolai
# Quero conhecer mais alguém
# Digite seu nome
# Lido João
# Olá João