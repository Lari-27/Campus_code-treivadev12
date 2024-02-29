class Turma
  attr_reader :alunos
  attr_accessor :alunos, :nome


  def initialize(nome)
    @nome = nome
    @alunos = []
  end

  def adicionar_aluno(aluno)
    @alunos << aluno
  end

  def quantidade_alunos()
    return @alunos.length
  end

  private

  atr_writer :alunos
end

