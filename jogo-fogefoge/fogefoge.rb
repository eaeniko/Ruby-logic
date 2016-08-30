require_relative 'ui'

def le_mapa(numero)
	arquivo = "mapa#{numero}.txt"
	texto = File.read arquivo
	mapa = texto.split "\n"
	
end

def encontra_jogador(mapa)
	caractere_heroi = "H"
	mapa.each_with_index do |linha_atual, linha|
		coluna_do_heroi = linha_atual.index caractere_heroi
		if coluna_do_heroi
			return [linha, coluna_do_heroi]
		end
	end	
	#nao achei
end

def calcula_nova_posicao(heroi, direcao)
	heroi = heroi.dup
	case direcao
		when "W"
			heroi[0] -= 1
		when "S"
			heroi[0] += 1
		when "A"
			heroi[1] -= 1
		when "D"
			heroi[1] += 1
	end
	heroi
end

def joga(nome)
	mapa = le_mapa 1

	while true
		desenha_mapa mapa
		direcao = pede_movimento
		heroi = encontra_jogador mapa
		nova_posicao = calcula_nova_posicao heroi, direcao

		if nova_posicao[0] < 0
			next
		end
		if nova_posicao[1] < 0
			next
		end
		if nova_posicao[0] >= mapa.size
			next
		end
		if nova_posicao[1] >= mapa[0].size
			next
		end

		if mapa[nova_posicao[0]] [nova_posicao[1]] == "X"
			next
		end

		mapa [heroi[0]] [heroi[1]] = " "
		mapa [nova_posicao[0]] [nova_posicao[1]] = "H"						
	end	
end

def inicia_fogefoge
	nome = da_boas_vindas
	joga nome
end