class MessageDescription
  def initialize
    @fields = Hash.new
    @fields['FNKsu'] = FieldDescription.new('STRING', 'EQ', true)
    @fields['ENQUEUE_DATE'] = FieldDescription.new('DATE', 'BTW', false)
    @fields['Qutity'] = FieldDescription.new('NUMBER', 'EQ', false)
  end
  
  def fields
    @fields
  end
end
