require "minitest/autorun"
require "currency"

class CurrencyTest < MiniTest::Unit::TestCase
  def test_amount_and_currency_code
    money = Currency.new(50, "NZD")
    assert_equal 50, money.amount
    assert_equal "NZD", money.code
  end

  def equal_another_with_same_amt_code
    money1 = Currency.new(12, "GBP")
    different_amount = Currency.new(12, "GBP")
    assert_equal money1, different_amount
  end
end


# Should equal another Currency object with the same amount and currency code
# Should be able to be added to another Currency object with the same currency code
# Should be able to be subtracted by another Currency object with the same currency code
# Should raise a DifferentCurrencyCodeError when you try to add or subtract two Currency objects with different currency codes.
# Should be able to be multiplied by a Fixnum or Float and return a Currency object
