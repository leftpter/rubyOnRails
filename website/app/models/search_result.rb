class SearchResult
  def initialize
    @fields = Hash.new    
  end
  
  def addField(name, value)
    @fields[name] = value
  end
  
  def setKey(key)
    @key = key
  end
  
  def getFields
    @fields
  end
  
  def getKey
    @key
  end
end
