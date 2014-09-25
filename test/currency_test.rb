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
    money2 = Currency.new(12, "GBP")
    assert_equal money1, money2
  end

  def added_to_object_with_same_code
    money1 = Currency.new(50, "GBP")
    money2 = Currency.new(60, "GBP")
    money3 = money1 + money2
    assert_equal 110, money3.amount
  end

  def subtracted_from_object_with_same_code
    money1 = Currency.new(100, "GBP")
    money2 = Currency.new(50, "GBP")
    money3 = money1 - money2
    assert_equal 50, money3.amount
  end
end


# Should be able to be multiplied by a Fixnum or Float and return a Currency object
