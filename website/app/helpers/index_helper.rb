module IndexHelper
  def self.getMessageTypeIndexName(params, description)
    if params.nil? or params['message_type'].nil? or description.getMessages[params['message_type']].nil?
      # use the frist hash key as message type
      message_type = description.getMessages.keys[0]
    else
      message_type = params['message_type']
    end
    
    if params.nil? or params['index_name'].nil? or description.getMessages[message_type].getIndex[params['index_name']].nil?
      # use the frist hash key as index name
      index_name = description.getMessages[message_type].getIndex.keys[0]
    else
      index_name = params['index_name']
    end
    
    return message_type, index_name
  end
end
