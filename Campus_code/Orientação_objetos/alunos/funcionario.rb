class Funcionario
  attr_accessor :nome, :ferias, :codigo_funcionario

  def initialize(nome, codigo_funcionario) 
    @nome = nome
    @codigo_funcionario = codigo_funcionario
    @ferias = false
    @dataInicioFerias = nil
    @dataFimFerias = nil
  end

  def iniciarFerias()
    if @ferias == true
      puts "Funcionário está de férias"
    return
    end
    @ferias = true
    @dataInicioFerias = Time.now()
  end

  def encerrarFerias()
    if @ferias == false
      puts "Funcionário não está de férias"
    return
    end
    @ferias = false
    @dataFimFerias = Time.now()
  end

  def imprime()
    puts "Nome: #{@nome}"
    puts "Código de Funcionário: #{@codigo_funcionario}"
    puts "Férias: #{@ferias}"
    puts "Data de Início das Férias: #{@dataInicioFerias}"
    puts "Data de Fim das Férias: #{@dataFimFerias}"
  end
end