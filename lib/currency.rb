class DifferentCurrencyCodeError < ArgumentError
end

class Currency
  def initialize (amount, code)
    @amount = amount
    @code = code
  end

  def amount
    @amount
  end

  def code
    @code
  end

  def == (other)
    if @code == other.code && @amount == other.amount
      true            #what good does this do
    end
  end

  def add_values
    if self.code != another_code
      raise DifferentCurrencyCodeError, "Incompatible currency codes!"
    else
      return Currency.new((self.amount + add_values.amount), self.code)
    end
  end

  def subtract_values
    if self.code != another_code
      raise DifferentCurrencyCodeError, "Incompatible currency codes!"
    else
      return Currency.new((self.amount - add_values.amount), self.code)
    end
  end
end
