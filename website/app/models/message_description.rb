class MessageDescription
  def initialize
    @index = Hash.new    
  end
  
  def add(name, index)
    @index[name] = index
  end
  
  def getIndex
    @index
  end
end
