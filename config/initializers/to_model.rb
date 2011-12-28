class String
  # used to instantiate a model based on a dom_id style
  # identifier like "person_12"
  def to_model
    self =~ /(.*?)_(\d+)$/
    class_name, id = $1, $2
    class_name.classify.constantize.find(id)
  end
  
end
