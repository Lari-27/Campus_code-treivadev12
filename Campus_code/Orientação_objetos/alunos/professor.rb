class Professor < Funcionario
  attr_accessor :turma

  def initialize(nome, codigo_funcionario, turma) 
    super(nome, codigo_funcionario)
    @turma = turma
  end

  def imprime()
    super()
    puts "Turma: #{@turma}"
  end
end