require 'minitest/autorun'
require 'domain_review'

class DomainReviewTest < Minitest::Test
  def test_domain_lane
    item = NotionParseDslStack::DomainReview.new(signal: 47, slack: 50, drag: 29, confidence: 92)
    assert_equal 149, NotionParseDslStack.domain_review_score(item)
    assert_equal "ship", NotionParseDslStack.domain_review_lane(item)
  end
end
