class Bibliografia
    include Comparable
    attr_reader :Author, :Title, :Serie, :Editorial, :Edicion
    attr_reader :Fecha_Publication
    def initialize 
        @Author = ["Sin autores"]   
        @Title = "Sin título"
        @Serie = nil
        @Editorial = "Editorial sin definir"
        @Edicion = 0
        @Fecha_Publication = "01-ENE-1901"
        @Tipo = nil
    end

    def add_author(name)
        if(@Author[0] == "Sin autores")
            @Author[0] = name 
        else
            @Author << name 
        end
    end
    
    def add_title(name)
        @Title = name
    end
    
    def add_serie(name)
        @Serie = name
    end
    
    def add_editorial(name)
        @Editorial = name
    end
    
    def set_edicion(num)
        @Edicion = num
    end
    
    def set_publication(fech)
        @Fecha_Publication = fech
    end
    
    def get_formato
        a = @Author.join(", ") +"\n"+@Title.to_s+"\n"+@Serie.to_s+
        "; "+@Edicion.to_s+" edition ("+@Fecha_Publication.to_s+")\n"
    end
    
    def get_tipo
        @Tipo    
    end
    
    def <=> (o)  
        if @Title!=o.Title
            @Title <=> o.Title
        else
            @Fecha_Publication[7..10] <=> o.Fecha_Publication[7..10]
        end
    end
end