module Calculator
  def calculate(receiver, operator, operand)
    receiver.send(operator, operand)
  end
end