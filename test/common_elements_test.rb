require 'minitest/autorun'
require_relative '../common_elements'

class CommonElementsTest < MiniTest::Test

  def test_common_elements
    assert_equal [], common_elements([], [])
    assert_equal [], common_elements([], [1])
    assert_equal [], common_elements([1], [])
    assert_equal [1], common_elements([1], [1])
    assert_equal [35, 40, 55], common_elements(
      [13, 27, 35, 40, 49, 55, 59],
      [17, 35, 39, 40, 55, 58, 60]
    )
  end

end
