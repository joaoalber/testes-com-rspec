class Jogo
  attr_accessor :nome, :ano, :genero

  def initialize(nome:, ano:, genero:)
    @nome = nome
    @ano = ano
    @genero = genero
  end

  def info
    "Jogo: #{nome} - Ano de lançamento: #{ano} - Genero: #{genero}"
  end

  def moba?
    genero == "moba"
  end

  def tempo_de_existencia
    Date.today.year - ano
  end
end