require_relative "file"
require_relative "object_data"
require "csv"
module ClassCreation

  def make_class(class_name)
    Object.const_set(class_name, Class.new)
    eval "#{ class_name }"
  end

  def get_class_name_from_file_name(file_name)
    class_name = file_name.split('.')[0].capitalize
    class_name[class_name.length - 1] == "s" ? class_name.chop : class_name
  end

  def create_class_and_instances_from_csv(file_name)
    class_name = get_class_name_from_file_name(file_name)
    new_class = make_class(class_name)
    object_array = ObjectData.new
    count = 0
    object_property_names = []
    CSV.foreach(File.get_full_path(file_name)) do |row|
      object_properties = row.each { |elem| elem.strip! }
      if count == 0
        object_property_names = object_properties
        new_class.class_eval "attr_accessor #{ ":" + object_property_names.join(",:") }"
      else
        new_object = instance_eval "#{ new_class }.new"
        for i in 0...object_properties.length
          instance_eval "new_object.#{ object_property_names[i] } = \"#{ object_properties[i] }\""
        end
        object_array.add(new_object)
      end
      count += 1
    end
    [object_array, object_property_names]
  end

end