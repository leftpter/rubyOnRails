class MessagesDescription
  def createDate
    @messages = Hash.new
    
    # PO message
    po = MessageDescription.new
    # Index FNSku
    fnsku_index = IndexDescription.new
    fnsku_index.add('FNKsu', FieldDescription.new('STRING', 'EQ', true))
    fnsku_index.add('ENQUEUE_DATE', FieldDescription.new('DATE', 'BTW', false))
    fnsku_index.add('Qutity', FieldDescription.new('NUMBER', 'EQ', false))
    
    po.add('FNSku', fnsku_index)
    
    @messages['po'] = po
  end
  
  def initialize
    createDate
  end
  
  def getMessages
    @messages
  end
end
