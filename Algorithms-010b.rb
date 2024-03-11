class Rio
    attr_accessor :lado_atual, :lado_oposto
  
    def initialize
      @lado_atual = [:leao, :cabra, :grama]
      @lado_oposto = []
    end
  
    def atravessar(objeto)
      if @lado_atual.include?(objeto)
        @lado_atual.delete(objeto)
        @lado_oposto << objeto
        puts "Levando #{objeto} para o outro lado do rio."
      else
        puts "#{objeto} não está no lado atual do rio."
      end
    end
  
    def voltar(objeto)
      if @lado_oposto.include?(objeto)
        @lado_oposto.delete(objeto)
        @lado_atual << objeto
        puts "Voltando com #{objeto} para o lado inicial do rio."
      else
        puts "#{objeto} não está no lado oposto do rio."
      end
    end
  
    def deixar(objeto)
      if @lado_atual.include?(objeto)
        @lado_atual.delete(objeto)
        puts "Deixando #{objeto} no lado atual do rio."
      else
        puts "#{objeto} não está no lado atual do rio."
      end
    end
  
    def mostrar_estado
      puts "Lado Atual: #{@lado_atual.join(', ')}"
      puts "Lado Oposto: #{@lado_oposto.join(', ')}"
      puts "--------------------"
    end
  end
  
  def resolver_problema_interativo
    rio = Rio.new
  
    while rio.lado_atual != []
      rio.mostrar_estado
  
      puts "O que você quer fazer?"
      puts "1 - Levar um objeto"
      puts "2 - Deixar um objeto"
      escolha = gets.chomp.to_i
  
      case escolha
      when 1
        puts "Qual objeto você quer levar? (leao, cabra, grama)"
        objeto = gets.chomp.downcase.to_sym
        rio.atravessar(objeto)
      when 2
        puts "Qual objeto você quer deixar? (leao, cabra, grama)"
        objeto = gets.chomp.downcase.to_sym
        rio.deixar(objeto)
      else
        puts "Escolha inválida. Tente novamente."
      end
    end
  
    puts "Parabéns! Você atravessou todos os objetos com sucesso."
  end
  
  resolver_problema_interativo
  