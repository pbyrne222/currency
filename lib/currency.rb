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

  def <=> (item_to_compare)
    if @code == item_to_compare.code
    @amount <=> item_to_compare.amount
    else
    return nil
    end
  end
end
