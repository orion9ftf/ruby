class Transaction
  attr_accessor :user, :date, :concept, :amount

  def salary
    1500
  end
end

class Invoice < Transaction
  attr_accessor :number
  
  def salary
    super + 200
  end
end
# los atributos y métodos son los que vamos a heredar
transaction = Transaction.new
invoice = Invoice.new
invoice.user = "Camille"

puts invoice.salary
puts transaction.salary
