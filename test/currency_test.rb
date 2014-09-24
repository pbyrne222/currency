require "minitest/autorun"
require "currency"

class CurrencyTest < MiniTest::Unit::TestCase
  def test_amount_and_currency_code
    currency_test = Currency.new("50", "USD")
    assert equal, 
    refute_nil.currency
  end
end

# Should be created with an amount and a currency code
# Should equal another Currency object with the same amount and currency code
# Should be able to be added to another Currency object with the same currency code
# Should be able to be subtracted by another Currency object with the same currency code
# Should raise a DifferentCurrencyCodeError when you try to add or subtract two Currency objects with different currency codes.
# Should be able to be multiplied by a Fixnum or Float and return a Currency object