class Rio
    attraccessor :lado_atual, :lado_oposto

    def initialize
        @lado_atual = [:leao, :cabra, :grama]
        @lado_oposto = []
    end

    def atravessar(objeto)
        if @lado_atual.include?(objeto)
            @lado_atual.delete(objeto)
            @lado_oposto << objeto
            puts "Levando #{objeto} para o outro lado do rio."
        end
    end

    def voltar (objeto)
        if @lado_oposto.include?(objeto)
            @lado_oposto.delete(objeto)
            @lado_atual << objeto
            puts "Voltando com #{objeto} para o lado inicial do rio."
        end
    end

    def deixar(objeto)
        if @lado_atual.include?(objeto)
            @lado_atual.delete(objeto)
            puts "Deixando #{objeto} no lado atual do rio."
        end
    end

    def mostrar_estado
        puts "Lado Atual: #{@lado_atual.join(', ')}"