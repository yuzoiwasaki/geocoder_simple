require 'minitest/autorun'
require 'geocoder_simple'
MiniTest.autorun

class TestGeocoderSimple < MiniTest::Test
  def setup
    $stdout, @orig_stdout =
      open("/dev/null", 'w'), $stdout
    @geocoder = GeocoderSimple.new("東京都墨田区押上１丁目１−２")
  end

  def teardown
    $stdout = @orig_stdout
  end

  def test_address
    assert_equal @geocoder.address, "東京都墨田区押上１丁目１−２"
  end

  def test_lng
    assert_equal @geocoder.lng, 139.8107155
  end

  def test_lat
    assert_equal @geocoder.lat, 35.7100327
  end

  def test_update_address
    @geocoder.address = "東京都港区芝公園４丁目２−８"
    assert_equal @geocoder.address, "東京都港区芝公園４丁目２−８"
    assert_equal @geocoder.lng, 139.7454636
    assert_equal @geocoder.lat, 35.6585817
  end
end
