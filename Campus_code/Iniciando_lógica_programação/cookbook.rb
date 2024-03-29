CADASTRAR_RECEITA = 1 
VISUALIZAR_RECEITA = 2 
SAIR_COOKBOOK = 3

def bem_vindo()
  puts "Bem-vindo ao cookbook, sua rede social de receitas!"
end

def menu()
  puts "[#{CADASTRAR_RECEITA}] Cadastrar uma receita"
  puts "[#{VISUALIZAR_RECEITA}] Ver todas as receitas"
  puts "[#{BUSCAR_RECEITA}] Buscar receita"
  puts "[#{SAIR_COOKBOOK}] Sair"

  print "Escolha uma opção: "
  return gets.to_i()
end 

def inserir_receita()
    puts "Digite o nome da receita: "
    nome = gets.chomp()

    puts "Digite o tipo da receita: "
    tipo = gets.chomp()

    puts 
    puts "Receita #{nome} cadastrada com sucesso! "
    puts
    return {nome: nome, tipo: tipo}
end

def imprimir_receitas(receitas)
  puts "================= Receitas cadastradas =================  "
    receitas.each do |receita|
      puts "#{receita[:nome]} - #{receita[:tipo]}"
    end
    puts
    if receitas.empty?
      puts "Nenhuma receita cadastrada"
    end 
end

bem_vindo()

receitas = []

opcao = menu()

loop do
  if(opcao == CADASTRAR_RECEITA)
  receitas << inserir_receita()

  elsif(opcao == VISUALIZAR_RECEITA)
    imprimir_receitas(receitas)
  elsif(opcao == SAIR_COOKBOOK)
    break
  else
    puts "Opção inválida."
  end

  opcao = menu()
end

puts
puts "========== Encerrando =========="
puts "Obrigada por usar o cookbook!"