module Code

  def create_method(definition)
    instance_eval(definition)
  end

  def execute_method(method_name)
    instance_eval(method_name)
  end

end