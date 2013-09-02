class ObjectData

  def initialize
    @array_of_objects = []
  end

  def add(obj)
    @array_of_objects.push(obj)
  end

  def display(property)
    @array_of_objects.each do |object|
      property_value = object.instance_eval "#{ property }"
      puts "#{ property } : #{ property_value }"
    end
  end

end