class IndexDescription
  def initialize
    @fields = Hash.new
  end
  
  def add(name, field)
    @fields[name] = field
  end
  
  def getFields
    @fields
  end
end
