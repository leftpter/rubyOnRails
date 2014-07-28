class SearchResults
  def initialize
    @results = Array.new
  end
  
  def setData
    item = SearchResult.new
    item.addField('FNKsu', 'fnksu_ddafsdfs')
    item.addField('ENQUEUE_DATE', '03/11/2014')
    item.addField('Qutity', '994')
    
    @results.push(item)
  end
  
  def getResults
    @results
  end
end
