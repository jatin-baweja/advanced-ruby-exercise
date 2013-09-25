module MethodParameters
  def parameter_count(params_hash)
    count_hash = {}
    count_hash[:req] = params_hash[:req] ? params_hash[:req].length : 0
    count_hash[:opt] = params_hash[:opt] ? params_hash[:opt].length : 0
    count_hash[:max] = params_hash[:rest] ? 1.0/0 : (count_hash[:req] + count_hash[:opt])
    count_hash[:block] = params_hash[:block] ? 1 : 0
    count_hash
  end
end
