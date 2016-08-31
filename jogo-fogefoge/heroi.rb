class Heroi
	attr_accessor :linha, :coluna


	def calcula_nova_posicao(direcao)
		novo_heroi = dup
		movimentos = {
			"W" => [-1, 0],
			"S" => [+1, 0],
			"A" => [0, -1],
			"D" => [0, +1]
		}
		movimentos = movimentos[direcao]
		novo_heroi.linha += movimentos[0]
		novo_heroi.coluna += movimentos[1]
		novo_heroi
	end
end
