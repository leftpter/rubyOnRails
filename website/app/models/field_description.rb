class FieldDescription
  def initialize(type, operator, required)
    @type = type
    @operator = operator
    @required = required
  end
  
  def getType
    @type
  end
  
  def getOperator
    @operator
  end
  
  def isRequired
    @required
  end
end
