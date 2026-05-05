require 'minitest/autorun'
require 'policy'

class PolicyTest < Minitest::Test
  def test_fixture_decisions
    signal_case_1 = NotionParseDslStack::Signal.new(demand: 79, capacity: 94, latency: 27, risk: 8, weight: 9)
    assert_equal 141, NotionParseDslStack.score(signal_case_1)
    assert_equal 'review', NotionParseDslStack.classify(signal_case_1)
    signal_case_2 = NotionParseDslStack::Signal.new(demand: 94, capacity: 102, latency: 9, risk: 17, weight: 6)
    assert_equal 182, NotionParseDslStack.score(signal_case_2)
    assert_equal 'accept', NotionParseDslStack.classify(signal_case_2)
    signal_case_3 = NotionParseDslStack::Signal.new(demand: 103, capacity: 72, latency: 21, risk: 20, weight: 13)
    assert_equal 139, NotionParseDslStack.score(signal_case_3)
    assert_equal 'review', NotionParseDslStack.classify(signal_case_3)
  end
end
