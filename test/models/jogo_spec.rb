require "rails_helper"

describe Jogo do
  context "#info" do
    it "retorna as informações do jogo" do
      jogo = Jogo.new(nome: "Genshin Impact", ano: 2020, genero: "RPG")

      resultado = jogo.info

      expect(resultado)
        .to eq("Jogo: #{jogo.nome} - Ano de lançamento: #{jogo.ano} - Genero: #{jogo.genero}")
    end
  end

  context "#moba?" do
    it "retorna verdadeiro" do
      jogo = Jogo.new(nome: "LOL", ano: 2012, genero: "moba")

      resultado = jogo.moba?

      expect(resultado).to be_truthy
    end

    it "retorna falso" do
      jogo = Jogo.new(nome: "Tetris", ano: 1990, genero: "arcade")

      resultado = jogo.moba?

      expect(resultado).to be_falsey
    end
  end

  context "#tempo_de_existencia" do
    it "retorna o tempo de existencia do jogo" do
      jogo = Jogo.new(nome: "Sonic", ano: 1995, genero: "Aventura")

      resultado = jogo.tempo_de_existencia

      expect(resultado).to eq(Date.today.year - jogo.ano)
    end
  end
end