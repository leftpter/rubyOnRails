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
    
     # Index FNSku
    warehouse_index = IndexDescription.new
    warehouse_index.add('WareHouse', FieldDescription.new('STRING', 'EQ', true))
    warehouse_index.add('ENQUEUE_DATE', FieldDescription.new('DATE', 'BTW', false))
    warehouse_index.add('Qutity', FieldDescription.new('NUMBER', 'EQ', false))
    
    po.add('WareHouse', warehouse_index)
    
    @messages['po'] = po
    
    # PO message
    fc = MessageDescription.new
    # Index FNSku
    fnsku_index = IndexDescription.new
    fnsku_index.add('fc_FNKsu', FieldDescription.new('STRING', 'EQ', true))
    fnsku_index.add('ENQUEUE_DATE', FieldDescription.new('DATE', 'BTW', false))
    fnsku_index.add('Qutity', FieldDescription.new('NUMBER', 'EQ', false))
    
    fc.add('FNSku', fnsku_index)
    
     # Index FNSku
    warehouse_index = IndexDescription.new
    warehouse_index.add('fc_WareHouse', FieldDescription.new('STRING', 'EQ', true))
    warehouse_index.add('ENQUEUE_DATE', FieldDescription.new('DATE', 'BTW', false))
    warehouse_index.add('Qutity', FieldDescription.new('NUMBER', 'EQ', false))
    
    fc.add('WareHouse', warehouse_index)
    
    @messages['fc'] = fc
  end
  
  def initialize
    createDate
  end
  
  def getMessages
    @messages
  end
end
