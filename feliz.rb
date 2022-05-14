require 'json'

def sort_by_price_ascending(json_string)
  #return nil
  json.gsub!('\'', '''')
  parsed = JSON.parse(parse)
  keys_new(parsed)
end

def keys_new
    hash.inject({}){ |hash_n, key_val| 
    key, value = key_val
    value = keys_new(value) 
    if value.is_a?(Hash)
        hash_n[key.to_sym] = value
        hash_n
    }
    end 
end


sort_by_price_ascending =
    {"name":"eggs","price":1},
    {"name":"coffee","price":9.99},
    {"name":"rice","price":4.04}

puts sort_by_price_ascending["price"]


#puts sort_by_price_ascending

#acepta una cadena en formato JSON, como en el siguiente ejemplo

#ordena los artículos por precio en orden ascendente

#si dos productos tienen el mismo precio, los ordena por su nombre en orden alfabético.

#devuelve una cadena en formato JSON que es equivalente a la del formato de entrada

*********

class CategoryTree
    attr_accessor :category, :parent
  
    def add_category(category, parent)
      @category = category
      @parent = parent
    end
  
    def get_children(category)
      @category = category
  
      return []
    end
  end
  
  class CategoryGet < CategoryTree
    attr_accessor :category
  
    def get_children(category)
      @category = category
  
      return []
    end
  end
  
  c = CategoryTree.new
  c.add_category('A', nil)
  c.add_category('B', 'A')
  c.add_category('C', 'A')
  puts (c.get_children('A') || []).join(',')

  