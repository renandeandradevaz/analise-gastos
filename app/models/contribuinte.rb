class Contribuinte < ActiveRecord::Base

  has_many :gastos

  def total
    self.gastos.sum(:valor)
  end

end
