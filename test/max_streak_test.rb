require 'minitest/autorun'
require_relative '../max_streak'

class MaxStreakTest < MiniTest::Test

  def test_max_streak
    a1 = [  1 ,  2 ,  3 ]
    a2 = [  3 ,  2 ,  1 ]
    a3 = [ -4 , -3 , -2 , -1 ]
    a4 = [ -1 , -2 , -3 , -4 ]
    a5 = [  4 , -1 , -3 ,  2 ,  1 ,  2 , -3 ]
    a6 = [ -3 , -5 ,  6 , -2 ,  3 ,  0 , -5 ,  5 ]

    assert_equal [  1 ,  2 ,  3 ] , max_streak(a1)
    assert_equal [  3 ,  2 ,  1 ] , max_streak(a2)
    assert_equal [ -1 ]           , max_streak(a3)
    assert_equal [ -1 ]           , max_streak(a4)
    assert_equal [  2 ,  1 ,  2 ] , max_streak(a5)
    assert_equal [  6 , -2 ,  3 ] , max_streak(a6)
  end

end
