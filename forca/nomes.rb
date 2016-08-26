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