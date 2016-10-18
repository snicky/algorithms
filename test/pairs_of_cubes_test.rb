require 'minitest/autorun'
require_relative '../pairs_of_cubes'

class PairsOfCubesTest < MiniTest::Test

  def test_pairs_of_cubes
    result_15 = [ [[1, 12], [9, 10]] ]
    result_20 = result_15 + [ [[2, 16], [9, 15]] ]
    result_25 = result_20 + [ [[2, 24], [18, 20]] ]

    assert_equal result_15, pairs_of_cubes(15)
    assert_equal result_20, pairs_of_cubes(20)
    assert_equal result_25, pairs_of_cubes(25)
  end

end
