class NewString < String

  def exclude?(str)
    !include?(str)
  end

  def char_at(position)
    self[position]
  end

end